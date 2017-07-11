"""
Blog的中间件，用于统计访问数据,一般一个APP使用一个中间件就可以了
"""
from django.core.exceptions import ObjectDoesNotExist
from django.http import HttpResponseForbidden
from django.utils.deprecation import MiddlewareMixin
from blog.models import VisitorRecord, PageView
from django.utils import timezone

#同一次访问字数限制
DENY_VISIT_COUNT_THRESHOLD = 3000

class VisitRecordMiddleware(MiddlewareMixin):
    """
     游客访问记录中间件
     将非管理员操作记录到数据库中
    """

    def __init__(self, get_response=None):
        self.get_response = get_response

    def process_request(self, request):
        request_path = request.path_info  #请求路径

        if 'xadmin' not in request_path:
            visitor_record = VisitorRecord()

            visitor_record.http_host = request.META.get('HTTP_HOST')
            visitor_record.http_user_agent = request.META.get('HTTP_USER_AGENT')
            visitor_record.ip = str(request.META.get('REMOTE_ADDR'))
            visitor_record.server_name = request.META.get('SERVER_NAME')
            visitor_record.http_path = request.path_info

            visitor_record.save() #保存访问记录


class PageViewMiddleware(MiddlewareMixin):
    """
    站点访问统计中间件,统计站点访问量
    """
    #https://docs.djangoproject.com/en/1.11/topics/http/middleware/
    def __init__(self, get_response=None):
        self.get_response = get_response
        self.count = 0

    def process_request(self, request):

        remote_ip = request.META['REMOTE_ADDR'] #访问者的IP地址
        #如果当前session当中存在当前ip，表明还是同一次访问
        if remote_ip not in request.session:
            request.session[remote_ip] = 1
            try:
                #如果记录存在则更新记录
                visit = PageView.objects.get(create_date=timezone.now())
                visit.today_visit += 1
                visit.save()
            except ObjectDoesNotExist:
                #如果记录不存在则新建一条记录
                visit = PageView(create_date=timezone.now())
                visit.today_visit += 1
                visit.save()
