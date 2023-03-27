from django.urls import path
from .views import TbMerantiList, TbMerantiDetail, TbFamList, TbFamDetail

urlpatterns = [
    path('listmeranti/', TbMerantiList.as_view()),
    path('listmeranti/<int:pk>/', TbMerantiDetail.as_view()),
    path('listfam/', TbFamList.as_view()),
    path('listfam/<int:pk>', TbFamDetail.as_view()),
]
