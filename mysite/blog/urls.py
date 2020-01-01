from django.conf.urls import url
from django.contrib import admin
from . import views

admin.autodiscover()
app_name = 'blog'
urlpatterns = [
    url(r'^$', views.IndexView.as_view(), name='index'),
    url(r'^post/(?P<pk>[0-9]+)/$', views.PostDetailView.as_view(), name='detail'),
    url(r'^archives/(?P<year>[0-9]{4})/(?P<month>[0-9]{1,2})/$', views.archives, name='archives'),
    url(r'^category/(?P<pk>[0-9]+)/$', views.CategoryView.as_view(), name='category'),
    url(r'^tag/(?P<pk>[0-9]+)/$', views.tag, name='tag'),
    url(r'^about/$', views.about, name='about'),
    url(r'^contact/$', views.contact, name='contact'),
    url(r'^archives/$', views.ArchiveListView.as_view(), name='archive_list'),
    url(r'^tags/$', views.TagsView.as_view(), name='tag_list'),
    url(r'^friends/$', views.FriendsView.as_view(), name='friends')
]