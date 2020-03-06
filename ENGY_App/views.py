import re

from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect

from ENGY_App.forms import CategoryForm
from ENGY_App.models import Category, Offer, Offers


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


def offers(request):
    offers = Offers.objects.all()
    return render(request, 'offers.html', {'offers': offers})


def offer(request):
    rootList = Category.get_roots()
    return render(request, 'offer.html', {'rootList': rootList})


def save_category_elements(request):
    if request.method == "POST":
        if request.POST.get('name') != '':
            offers_created = Offers.objects.get_or_create(name=request.POST.get('name'))

            for key in request.POST:
                if request.POST.get(key) == 'True':
                    offer = Offer.objects.update_or_create(category_id=key, offer_id=offers_created[0].id)

    return redirect('offers')


def print(request, offer_id):
    categoryIdList = Offer.objects.filter(offer_id=offer_id).values_list('category_id', flat=True)

    categoryList = Category.objects.filter(pk__in=categoryIdList)

    return render(request, 'offerDetails.html', {'categoryList': categoryList})

# class Print(PDFTemplateView):
#     template_name = 'pdf/content.html'
#
#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#
#         categoryIdList = Offer.objects.filter(offer_id=self.kwargs.get('offer_id')).values_list('category_id', flat=True)
#         categoryList = Category.objects.filter(pk__in=categoryIdList)
#
#         context['categoryList'] = categoryList
#         return context


