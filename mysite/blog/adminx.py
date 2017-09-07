import xadmin
from .models import Category, Post, Tag, About, VisitorRecord, FriendSites
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

class VisitorAdmin(object):
    list_display = ['http_host', 'http_path', 'http_user_agent', 'ip', 'server_name']

class FriendsAdmin(object):
    list_display = ['site_name', 'site_url', 'admin_name', 'admin_contact', 'is_pub']

xadmin.site.register(Post, PostAdmin)
xadmin.site.register(Category)
xadmin.site.register(Tag)
xadmin.site.register(About)
xadmin.site.register(FriendSites, FriendsAdmin)
xadmin.site.register(VisitorRecord, VisitorAdmin)
