from rest_framework import generics
from .models import TbMeranti, TbFam
from .serializers import TbMerantiSerializer, TbFamSerializer

class TbMerantiList(generics.ListCreateAPIView):
    queryset = TbMeranti.objects.all()
    serializer_class = TbMerantiSerializer

class TbMerantiDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = TbMeranti.objects.all()
    serializer_class = TbMerantiSerializer

class TbFamList(generics.ListCreateAPIView):
    queryset = TbFam.objects.all()
    serializer_class = TbFamSerializer

class TbFamDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = TbFam.objects.all()
    serializer_class = TbFamSerializer