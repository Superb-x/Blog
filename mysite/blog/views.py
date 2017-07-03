import markdown
from django.shortcuts import render, get_object_or_404
from django.http import JsonResponse, HttpResponse
from comments.forms import CommentFrom
from .models import Post, Category, Tag
# Create your views here.


def index(request):
    post_list = Post.objects.all()
    return render(request, 'blog/index.html', context={'post_list': post_list})

def detail(request, pk):
    post = get_object_or_404(Post, pk=pk)

    #被访问一次阅读量+1
    post.increase_views()

    post.body = markdown.Markdown(post.body, extensions=[
        'markdown.extensions.extra',
        'markdown.extensions.codehilite',
        'markdown.extensions.toc',
    ])

    form = CommentFrom()

    comment_list = post.comment_set.all()

    context = {
        'post': post,
        'form': form,
        'comment_list': comment_list
    }
    return render(request, 'blog/detail.html', context=context)

def archives(request, year, month):
    post_list = Post.objects.filter(create_time__year=year, create_time__month=month)
    return render(request, 'blog/index.html', context={'post_list': post_list})

def category(request, pk):
    cate = get_object_or_404(Category, pk=pk)
    post_list = Post.objects.filter(category=cate)
    return render(request, 'blog/index.html', context={'post_list': post_list})

def tag(request, pk):
    tag = get_object_or_404(Tag, pk=pk)
    post_list = Post.objects.filter(tags=tag)
    return render(request, 'blog/index.html', context={'post_list': post_list})

def about(request):
    return render(request, 'blog/about.html', context={'about': 'about'})

def contact(request):
    return render(request, 'blog/contact.html', context={'contact': 'contact'})