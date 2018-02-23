# 基于Python/Django开发的个人博客

## 前言
自己一直想做一个博客，我不是很喜欢PHP，比较喜欢Python，综合考虑之后，觉得Django适合我，于是乎说干就干了，大概花了一个月的时间，从一窍不通到勉强上线，自己也学到了很多。

# 静态文件设置
在mysite的setting.py中设置静态文件目录

    STATICFILES_DIRS = [
        os.path.join(BASE_DIR, 'client/dist/static'),
        os.path.join(BASE_DIR, 'static')
    ]

    STATIC_ROOT = os.path.join(BASE_DIR, 'static')


处理静态文件的时候，一定要运行python manage.py collectstatic将当前项目下的静态文件搜集起来，不然就找不到文件了

这样Django会将整个项目下所有的隐藏的静态文件(admin自带的一些静态文件)都会复制到根目录static文件夹中

# 关于Django与Vue模板标签冲突的问题
开发中我们发现Vue和Django使用的都是‘{{}}’来渲染变量，这肯定会导致冲突，为了避免这个带来的影响，我查了很多资料找到了几个解决方案
### 方法一
修改vue.js的默认的绑定符号

    Vue.config.delimiters = ['${', '}']

### 方法二
方法二是最省事的办法
直接禁用Django的模板渲染

    {% verbatim %}
        {{ vue }}
    {% endverbatim %}

详细信息可以参考[Django模板与Vue.js冲突问题](https://my.oschina.net/soarwilldo/blog/755984)