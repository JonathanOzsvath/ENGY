from django.db import models
from django.utils import timezone
from treenode.models import TreeNodeModel


class Category(TreeNodeModel):
    treenode_display_field = 'itemNumber'

    itemNumber = models.CharField(max_length=30, null=True, blank=True)
    description = models.CharField(max_length=500)
    quantity = models.FloatField(null=True, blank=True)
    unit = models.CharField(max_length=20, null=True, blank=True)
    unitPriceOfMaterial = models.DecimalField(max_digits=20, decimal_places=2, null=True, blank=True)
    pricePerUnit = models.DecimalField(max_digits=20, decimal_places=3, null=True, blank=True)

    class Meta(TreeNodeModel.Meta):
        verbose_name = 'Category'
        verbose_name_plural = 'Categories'


class Offers(models.Model):
    name = models.CharField(max_length=100, unique=True)
    date = models.DateTimeField(default=timezone.now)


class Offer(models.Model):
    offer = models.ForeignKey(Offers, on_delete=models.PROTECT)
    category = models.ForeignKey(Category, on_delete=models.PROTECT)
