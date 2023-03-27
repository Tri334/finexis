from django.db import models

class TbMeranti(models.Model):
    cl_invest_name = models.CharField(max_length=100)
    cl_current_price = models.DecimalField(max_digits=12, decimal_places=2)
    cl_precentage_stonk = models.DecimalField(max_digits=5, decimal_places=2)


class TbFam(models.Model):
    cl_invest_name = models.CharField(max_length=100)
    cl_current_price = models.DecimalField(max_digits=12, decimal_places=2)
    cl_precentage_stonk = models.DecimalField(max_digits=5, decimal_places=2)