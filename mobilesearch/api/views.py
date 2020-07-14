from django.shortcuts import render
from rest_framework import viewsets
from .models import Mobiles
from .serializers import MobileSerialize
from sklearn.linear_model import LinearRegression
from rest_framework.response import Response
from rest_framework.decorators import action
from django.views.decorators.csrf import csrf_exempt
from itertools import chain
import pickle
import json

class MobileData(viewsets.ModelViewSet):
    queryset=Mobiles.objects.all()
    serializer_class=MobileSerialize

    @action(methods=['get'],detail=False)
    def train(self,request):
        data=self.get_queryset()
        fields=data.values_list('fc1','fc2','bc1','bc2','bc3','bc4','ram','rom','battery','android')
        price=Mobiles.objects.all().values_list('price')
        regressor=LinearRegression()
        regressor.fit(fields,price)
        pickle.dump(regressor,open('trained_object.sav','wb'),protocol=2)
        return Response({"status":True,"message":"object trained successfully"})

    @action(methods=['post'],detail=False)  
    def test(self,request):
        brand=str(request.data['brand'])
        fc=str(request.data['fc'])
        bc=str(request.data['bc'])
        ram=str(request.data['ram'])
        rom=str(request.data['rom'])
        battery=str(request.data['battery'])
        android=str(request.data['android'])
        if(fc=='None'):
            fc=str(0)
    
        if(bc=='None'):
            bc=str(0)   

        if(ram=='None'):
            ram=0

        if(rom=='None'):
            rom=0

        if(battery=='None'):
            battery=0

        if(android=='None'):
            android=0             

        regressor=pickle.load(open('trained_object.sav','rb'))
        fc=fc.split('+')
        bc=bc.split('+')
        for i in range(0,2-len(fc)):
            fc.append(0)
        for i in range(0,4-len(bc)):
            bc.append(0)
        for i in range(0,2):
            fc[i]=int(fc[i]) 
        for i in range(0,4):
            bc[i]=int(bc[i])  
        X_in=[[fc[0],fc[1],bc[0],bc[1],bc[2],bc[3],float(ram),int(rom),int(battery),float(android)]]
        print(X_in)
        y_out=regressor.predict(X_in)   
        y_out=list(y_out)[0][0]   
        print(y_out)     
        query1=Mobiles.objects.all().filter(brand=brand, price__lte=y_out).order_by('-price')
        query2=Mobiles.objects.all().filter(price__lte=y_out).order_by('-price').exclude(brand=brand)
        query3=chain(query1,query2);
        serialized_all=MobileSerialize(query3,many=True)
        
        return Response({"mobiles":serialized_all.data,"price":y_out})
       