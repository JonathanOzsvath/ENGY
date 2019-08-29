from django.shortcuts import render


# Create your views here.
from ENGY_App.models import Category


def home(request):
    rootList = Category.get_roots()

    return render(request, 'index.html', {'rootList': rootList})
