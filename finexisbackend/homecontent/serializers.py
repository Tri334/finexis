from rest_framework import serializers
from .models import TbMeranti, TbFam

class TbMerantiSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbMeranti
        fields = '__all__'

class TbFamSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbFam
        fields = '__all__'

