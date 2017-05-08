# 基于Django与Vue.js的个人博客站点
提交的时候一定要注意将node_modules文件夹忽略掉，手动添加.gitignore即可

## 开发环境搭建
进入client文件夹下

    npm install
    npm run dev
    npm run build

# 静态文件设置
在mysite的setting.py中设置静态文件目录

    STATICFILES_DIRS = [
        os.path.join(BASE_DIR, 'client/dist/static'),
        os.path.join(BASE_DIR, 'static')
    ]

    STATIC_ROOT = os.path.join(BASE_DIR, 'static')


貌似这里设置了STATIC_ROOT之后与上边的STATICFILES_DIRS会引起冲突,具体原因还有待发掘, 执行完 `python manage.py collectstatic`就注释起来吧

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