from django.conf.urls import url
from django.contrib import admin
from . import views

admin.autodiscover()
app_name = 'server'
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^post/(?P<pk>[0-9]+)/$', views.detail, name='detail'),
]