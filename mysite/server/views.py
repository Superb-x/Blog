from django.shortcuts import render
from django.http import JsonResponse, HttpResponse
# Create your views here.
def index(request):
    data = {
        'status': 400,
        'msg': '成功',
        'data': []
    }
    return JsonResponse(data, safe=False)
