# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-07-11 10:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20170711_1425'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pageview',
            name='create_date',
            field=models.DateField(unique=True, verbose_name='日期'),
        ),
    ]