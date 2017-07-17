import markdown
from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.auth.models import User
from django.urls import reverse
from django.utils.html import strip_tags

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '分类'
        verbose_name_plural = verbose_name

class Tag(models.Model):
    name = models.CharField(max_length=100)


    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '标签'
        verbose_name_plural = verbose_name

class Post(models.Model):

    #文章标题
    title = models.CharField(max_length=100, verbose_name='标题')

    #文章正文
    body = RichTextUploadingField(verbose_name='正文')

    #创建时间和最后一次修改时间
    create_time = models.DateTimeField(verbose_name='创建时间')
    modified_time = models.DateTimeField(verbose_name='修改时间')

    # 文章摘要，可以没有文章摘要，但默认情况下 CharField 要求我们必须存入数据，否则就会报错。
    # 指定 CharField 的 blank=True 参数值后就可以允许空值了。
    excerpt = models.CharField(max_length=200, blank=True)

    # 这是分类与标签，分类与标签的模型我们已经定义在上面。
    # 我们在这里把文章对应的数据库表和分类、标签对应的数据库表关联了起来，但是关联形式稍微有点不同。
    # 我们规定一篇文章只能对应一个分类，但是一个分类下可以有多篇文章，所以我们使用的是 ForeignKey，即一对多的关联关系。
    # 而对于标签来说，一篇文章可以有多个标签，同一个标签下也可能有多篇文章，所以我们使用 ManyToManyField，表明这是多对多的关联关系。
    # 同时我们规定文章可以没有标签，因此为标签 tags 指定了 blank=True。
    # 如果你对 ForeignKey、ManyToManyField 不了解，请看教程中的解释，亦可参考官方文档：
    # https://docs.djangoproject.com/en/1.10/topics/db/models/#relationships
    category = models.ForeignKey(Category, verbose_name='分类')
    tags = models.ManyToManyField(Tag, blank=True, verbose_name='标签')

    # 文章作者，这里 User 是从 django.contrib.auth.models 导入的。
    # django.contrib.auth 是 Django 内置的应用，专门用于处理网站用户的注册、登录等流程，User 是 Django 为我们已经写好的用户模型。
    # 这里我们通过 ForeignKey 把文章和 User 关联了起来。
    # 因为我们规定一篇文章只能有一个作者，而一个作者可能会写多篇文章，因此这是一对多的关联关系，和 Category 类似。
    author = models.ForeignKey(User, verbose_name='作者')

    #新增view字段记录阅读量PV
    views = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.title

    # 自定义 get_absolute_url 方法
    # 记得从 django.urls 中导入 reverse 函数
    def get_absolute_url(self):
        return reverse('blog:detail', kwargs={'pk': self.pk})

    def increase_views(self):
        self.views += 1
        self.save(update_fields=['views'])

    def save(self, *args, **kwargs):
        #如果没有填写摘要
        if not self.excerpt:
            #首先实例化一个markdown类，用于渲染body的文本
            md = markdown.Markdown(extensions=[
                'markdown.extensions.extra',
                'markdown.extensions.codehilite',
            ])

            #strip_tag去掉HTML文本的全部HTML标签
            self.excerpt = strip_tags(md.convert(self.body))[:54]

        #调用父类的 save 方法将数据保存在数据库中
        super(Post, self).save(*args, **kwargs)

    #Django 允许我们在 models.Model 的子类里定义一个 Meta 的内部类，这个内部类通过指定一些属性来规定这个类该有的一些特性，例如在这里我们要指定 Post 的排序方式。
    class Meta:
        ordering = ['-create_time']
        verbose_name = '文章'
        verbose_name_plural = verbose_name

#关于
class About(models.Model):
    # 标题
    title = models.CharField(max_length=200, verbose_name="标题")
    # 主体内容
    body = RichTextUploadingField(verbose_name='正文')
    create_time = models.DateTimeField(verbose_name="发布日期")
    modified_time = models.DateTimeField(verbose_name="修改日期")
    is_pub = models.BooleanField(default=True, verbose_name="是否公开")
    veiws = models.PositiveIntegerField(default=0, verbose_name="访问量")

    class Meta:
        verbose_name = '关于'
        verbose_name_plural = verbose_name
        ordering = ['-create_time']

    def increase_views(self):
        #更薪访问量
        self.veiws += 1
        self.save(update_fields=['views'])

    def __str__(self):
        return self.title

#友情链接
class FriendSites(models.Model):
    """
    友情链接
    """
    site_name = models.CharField(max_length=20, blank=False, verbose_name='站点名称')
    site_url = models.URLField(blank=False, max_length=200, verbose_name='站点链接')
    admin_name = models.CharField(max_length=30, verbose_name='站长名称')
    admin_contact = models.CharField(max_length=200, verbose_name='站长联系方式')
    create_time = models.DateTimeField(verbose_name='创建时间')
    modified_time = models.DateTimeField(verbose_name='修改时间')
    is_pub = models.BooleanField(default=False, verbose_name='是否发布')

    def __str__(self):
        return self.site_name

    class Meta:
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name
        ordering = ['-create_time']  #排序


#访问记录
class VisitorRecord(models.Model):
    """
    记录游客的访问记录
    """
    http_host = models.CharField(max_length=200, verbose_name="主机")
    http_path = models.CharField(max_length=200, verbose_name="地址")
    http_user_agent = models.CharField(max_length=400, verbose_name="客户端信息")
    ip = models.CharField(max_length=20, verbose_name="IP")
    server_name = models.CharField(max_length=50, verbose_name="服务器主机名")
    create_time = models.DateTimeField(auto_now_add=True, verbose_name="请求时间")

    class Meta:
        verbose_name = "访问记录"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.ip


#站点运营统计数据，每天的有效访问量，访问ip等
class PageView(models.Model):
    """
    记录站点的运营统计数据, 每天的有效访问量以及IP
    """
    today_visit = models.PositiveIntegerField(default=0, verbose_name="访问量")
    create_date = models.DateField(unique=True, editable=True, verbose_name="日期")

    class Meta:
        verbose_name = "运营统计"
        verbose_name_plural = verbose_name

    def __str__(self):
        return "%s 访问量" % self.create_date.strftime('%Y-%m-%d')