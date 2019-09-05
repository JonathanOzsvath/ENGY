from django import forms

from ENGY_App.models import Category


class CategoryForm(forms.ModelForm):
    class Meta:
        model = Category
        itemNumber = forms.CharField()
        fields = ['tn_parent', 'itemNumber', 'description', 'quantity', 'unit', 'unitPriceOfMaterial', 'pricePerUnit', 'isMainCategory']
        labels = {'itemNumber': 'Tételszám',
                  'description': 'Tétel szövege',
                  'quantity': 'Mennyiség',
                  'unit': 'Egység',
                  'unitPriceOfMaterial': 'Anyag egységár',
                  'pricePerUnit': 'Díj egységre',
                  'isMainCategory': 'Fő kategória'
                  }
