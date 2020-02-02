from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^categories', views.categories, name='categories'),
    url(r'^add/(?P<item_id>[0-9]+)', views.add, name='add'),
    url(r'^add/addPost', views.post_add, name='addPost'),
    url(r'^deleteItem/(?P<item_id>[0-9]+)', views.delete, name='deleteItem'),
    url(r'^details/(?P<item_id>[0-9]+)', views.details, name='details'),
    url(r'^edit/(?P<item_id>[0-9]+)', views.edit, name='edit'),
    url(r'^offers', views.offers, name='offers'),
    url(r'^offer', views.offer, name='offer'),
]
