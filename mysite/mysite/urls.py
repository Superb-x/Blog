"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
import xadmin
from django.conf.urls import url, include
from blog.tpl import *
from django.conf.urls.static import static
from django.conf import settings
from blog.views import page_not_found

xadmin.autodiscover()

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^main$', TemplateView.as_view(template_name='main/index.html')),
    url(r'^todo/', Todo.as_view()),
    url(r'', include('blog.urls')),
    url(r'', include('comments.urls')),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^search/', include('haystack.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

handler404 = page_not_found