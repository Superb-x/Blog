from django.http import JsonResponse, HttpResponse, Http404

def index(request):
    data = {
        'status': 400,
        'msg': '成功',
        'data': []
    }
    return JsonResponse(data, safe=False)
