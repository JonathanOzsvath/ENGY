import re

from django.http import HttpResponseRedirect
from django.shortcuts import render

from ENGY_App.forms import CategoryForm
from ENGY_App.models import Category


def home(request):
    rootList = Category.get_roots()

    return render(request, 'index.html', {'rootList': rootList})


def add(request, item_id):
    parent = Category.objects.get(id=item_id)

    newChildItemNumber = ''
    lastChildItemNumber = parent.get_last_child().itemNumber
    if parent.itemNumber != None:
        if '.' in lastChildItemNumber:
            newChildItemNumber = '{}.{}'.format(parent.itemNumber, int(lastChildItemNumber.split('.')[-1]) + 1)
        elif re.search(re.compile(r'\d{3}-\d{3}-\d{3}'), newChildItemNumber):
            newChildItemNumber = '{}.{}'.format(parent.itemNumber, 1)
        elif '-' in lastChildItemNumber:
            newChildItemNumber = '{}-{:03}'.format(parent.itemNumber, int(lastChildItemNumber.split('-')[-1]) + 1)
        else:
            newChildItemNumber = '{}-{:03}'.format(parent.itemNumber, 1)
    else:
        newChildItemNumber = '{:02}'.format(int(lastChildItemNumber.split('-')[-1]) + 1)

    form = CategoryForm(initial={'tn_parent': item_id, 'itemNumber': newChildItemNumber})

    return render(request, 'addItem.html', {'form': form})


def post_add(request):
    form = CategoryForm(request.POST)
    if form.is_valid():
        form.save(commit=True)
    return HttpResponseRedirect('/')


def delete(request, item_id):
    item = Category.objects.get(id=item_id)
    item.delete()
    return HttpResponseRedirect('/')