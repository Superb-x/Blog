# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2018-02-24 08:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0016_auto_20180224_1402'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='friendsites',
            name='is_pub',
        ),
        migrations.AlterField(
            model_name='friendsites',
            name='site_intro',
            field=models.TextField(default='没有填写简介', verbose_name='简介'),
        ),
    ]
