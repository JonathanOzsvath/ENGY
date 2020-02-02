import re

from django.http import HttpResponseRedirect
from django.shortcuts import render

from ENGY_App.forms import CategoryForm
from ENGY_App.models import Category


def home(request):
    return render(request, 'index.html')


def categories(request):
    rootList = Category.get_roots()

    return render(request, 'categories.html', {'rootList': rootList})


def add(request, item_id):
    item = Category.objects.get(id=item_id)
    regex = re.compile(r'\d{2}(-\d{3})?$')

    newChildItemNumber = ''
    if item.tn_children_count == 0:
        lastChildItemNumber = item.itemNumber
        if regex.match(lastChildItemNumber):
            newChildItemNumber = '{}-{:03}'.format(item.itemNumber, 1)
        else:
            newChildItemNumber = '{}.{}'.format(item.itemNumber, 1)
    else:
        lastChildItemNumber = item.get_last_child().itemNumber
        if item.itemNumber != None:
            if regex.match(lastChildItemNumber):
                newChildItemNumber = '{}-{:03}'.format(item.itemNumber, int(lastChildItemNumber.split('-')[-1]) + 1)
            else:
                newChildItemNumber = '{}.{}'.format(item.itemNumber, int(lastChildItemNumber.split('.')[-1]) + 1)
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


def details(request, item_id):
    item = Category.objects.get(id=item_id)
    return render(request, 'details.html', {'item': item})


def edit(request, item_id):
    item = Category.objects.get(id=item_id)

    if request.method == "POST":
        form = CategoryForm(request.POST, instance=item)
        if form.is_valid():
            form.save(commit=True)
        return HttpResponseRedirect('/')
    else:
        form = CategoryForm(instance=item)
    return render(request, 'edit.html', {'form': form})
