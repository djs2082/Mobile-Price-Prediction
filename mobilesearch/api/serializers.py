from rest_framework import serializers
from .models import Mobiles

class MobileSerialize(serializers.ModelSerializer):
    class Meta:
        model=Mobiles
        fields='__all__'
