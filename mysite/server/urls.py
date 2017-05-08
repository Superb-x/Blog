from django.conf.urls import url
from django.contrib import admin
from . import views, api

admin.autodiscover()
urlpatterns = [
    url(r'^index/$', api.index, name='index'),
]