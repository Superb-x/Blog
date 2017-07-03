import xadmin
from .models import Category, Post, Tag
from xadmin import views
# Register your models here.


@xadmin.sites.register(views.BaseAdminView)
class BaseSetting(object):
    enable_thems = True
    use_bootswatch = True

@xadmin.sites.register(views.CommAdminView)
class GlobalSetting(object):
    site_title = 'Nearw 博客管理'
    site_footer = '刘祥麟的个人博客'
    menu_style = 'default'

class PostAdmin(object):
    list_display = ['title', 'create_time', 'modified_time', 'category', 'author']

xadmin.site.register(Post, PostAdmin)
xadmin.site.register(Category)
xadmin.site.register(Tag)