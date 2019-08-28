from django.db import models


# Create your models here.
class Item(models.Model):
    itemNumber = models.CharField(max_length=30, null=True)
    description = models.CharField(max_length=500)
    quantity = models.FloatField(null=True)
    unit = models.CharField(max_length=20, null=True)
    unitPriceOfMaterial = models.DecimalField(max_digits=20, decimal_places=2, null=True)
    pricePerUnit = models.DecimalField(max_digits=20, decimal_places=3, null=True)
    isMainCategory = models.BooleanField()
