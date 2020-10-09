# Generated by Django 3.1.2 on 2020-10-23 14:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0029_auto_20201023_2115'),
    ]

    operations = [
        migrations.AlterField(
            model_name='faculty',
            name='academic_year',
            field=models.CharField(choices=[('1', 2015), ('2', 2016), ('3', 2017), ('4', 2018), ('5', 2019)], max_length=50, null=True, verbose_name='Academic Year'),
        ),
    ]
