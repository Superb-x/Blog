# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-07-25 14:07
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20170725_2143'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='thumb',
            field=models.ImageField(blank=True, default='default.jpg', upload_to='uploads/%Y/%m/%d', verbose_name='缩略图'),
        ),
    ]