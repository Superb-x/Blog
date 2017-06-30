from django.shortcuts import render, get_object_or_404, redirect
from server.models import Post

from .models import Comment
from .forms import CommentFrom

def post_comment(request, post_pk):
    # 先获取被评论的文章，因为后面需要把评论和被评论的文章关联起来。
    # 这里我们使用了 Django 提供的一个快捷函数 get_object_or_404，
    # 这个函数的作用是当获取的文章（Post）存在时，则获取；否则返回 404 页面给用户。
    post = get_object_or_404(Post, pk=post_pk)

    if request.method == 'POST':
        # 用户提交的数据是一个字典对象
        #我们利用这些字段构建了commentForm的实例
        form = CommentFrom(request.POST)

        if form.is_valid():
            #检查到数据是合法的，调用表单的save方法保存数据到数据库
            # commit=False 的作用是仅仅利用表单的数据生成 Comment 模型类的实例，但还不保存评论数据到数据库。
            comment = form.save(commit=False)

            #把评论和被评论的文章关联起来
            comment.post = post

            #将评论实例数据保存进数据库，调用实例的save方法
            comment.save()

            # 重定向到 post 的详情页，实际上当 redirect 函数接收一个模型的实例时，它会调用这个模型实例的 get_absolute_url 方法，
            # 然后重定向到 get_absolute_url 方法返回的 URL。
            return redirect(post)
        else:
            # 检查到数据不合法，重新渲染详情页，并且渲染表单的错误。
            # 因此我们传了三个模板变量给 detail.html，
            # 一个是文章（Post），一个是评论列表，一个是表单 form
            # 注意这里我们用到了 post.comment_set.all() 方法，
            # 这个用法有点类似于 Post.objects.all()
            # 其作用是获取这篇 post 下的的全部评论，
            # 因为 Post 和 Comment 是 ForeignKey 关联的，
            # 因此使用 post.comment_set.all() 反向查询全部评论。
            # 具体请看下面的讲解。
            comment_list = post.comment_set.all()
            context = {
                'post': post,
                'form': form,
                'commnet_list': comment_list,
            }
            return render(request, 'blog/detail.html', context=context)

    # 如果不是POST请求的话说明用户根本没有提交数据
    return redirect(post)