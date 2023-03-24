from rest_framework import serializers
from .models import TbMeranti

class TbMerantiSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbMeranti
        fields = '__all__'

