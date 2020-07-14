from django.db import models

# Create your models here.

class Mobiles(models.Model):
    brand=models.CharField(max_length=20)
    type=models.CharField("model", max_length=40)
    fc1=models.IntegerField(default=0)
    fc2=models.IntegerField(default=0)
    bc1=models.IntegerField(default=0)
    bc2=models.IntegerField(default=0)
    bc3=models.IntegerField(default=0)
    bc4=models.IntegerField(default=0)
    ram=models.FloatField()
    rom=models.IntegerField()
    battery=models.IntegerField()
    android=models.FloatField()
    price=models.IntegerField()
    image=models.CharField(max_length=50)
