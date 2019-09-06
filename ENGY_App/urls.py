from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^addItem/(?P<item_id>[0-9]+)', views.add, name='addItem'),
    url(r'^addItem/add', views.post_add, name='add'),
    url(r'^deleteItem/(?P<item_id>[0-9]+)', views.delete, name='deleteItem'),
    url(r'^details/(?P<item_id>[0-9]+)', views.details, name='details'),
]
