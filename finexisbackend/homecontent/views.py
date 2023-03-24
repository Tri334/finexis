from rest_framework import viewsets
from .models import TbMeranti
from .serializers import TbMerantiSerializer

class TbMerantiViewClass(viewsets.ModelViewSet):
    query_meranti = TbMeranti.objects.all()
    meranti_serializer = TbMerantiSerializer
# Create your views here.
