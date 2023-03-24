from django.urls import include, path
from rest_framework import routers
from .views import TbMerantiViewClass

router = routers.DefaultRouter()
router.register(r'meratimodels', TbMerantiViewClass)

urlpatterns = [
    path('meranti', include(router.urls))
]
