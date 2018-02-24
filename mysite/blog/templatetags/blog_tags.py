import datetime
from django import template
from ..models import Post, Category, Tag, FriendSites, PageView, VisitorRecord, UserProfile
from django.db.models import Count, Sum
from django.utils import timezone
from django.core.exceptions import ObjectDoesNotExist

register = template.Library()

#获取当前时间
@register.simple_tag
def current_time(format_string):
    return datetime.datetime.now().strftime(format_string)

#获取最近文章
@register.simple_tag
def get_recent_posts(num=5):
    return Post.objects.all().order_by('-create_time')[:num]

#归档最近文章
@register.simple_tag
def archives(num=6):
    return Post.objects.dates('create_time', 'month', order='DESC')[:num]

#获取所有分类
@register.simple_tag
def get_categories():
    return Category.objects.annotate(num_posts=Count('post')).filter(num_posts__gt=0)

#获取所有标签
@register.simple_tag
def get_tags():
    return Tag.objects.annotate(num_post=Count('post')).filter(num_post__gt=0)

#获取当天访问记录
@register.simple_tag
def get_today_visit_count():
    try:
        count = PageView.objects.get(create_date=timezone.now().date())
    except ObjectDoesNotExist:
        # 没有记录则表示当天没人访问
        return 0
    return count.today_visit

#获取网站总共运行天数
@register.simple_tag
def get_all_run_day():
    return PageView.objects.count()

#获取网站总访问量
@register.simple_tag
def get_all_visit_count():
    return PageView.objects.all().aggregate(total_visit=Sum('today_visit'))

# 获取友情链接
@register.simple_tag
def get_friends():
    return FriendSites.objects.all()

# 获取用户信息
@register.simple_tag
def get_user_profile():
    return UserProfile.objects.all()