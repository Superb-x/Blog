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
        os.path.join(BASE_DIR, 'client/dist/static')
    ]

    STATIC_ROOT = os.path.join(BASE_DIR, 'static')

    python manage.py collectstatic

这样client/dist/static目录下所有的文件都会复制到项目的根目录static文件夹中