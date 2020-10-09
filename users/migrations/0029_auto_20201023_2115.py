# Generated by Django 3.1.2 on 2020-10-23 14:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0028_auto_20201023_2111'),
    ]

    operations = [
        migrations.AlterField(
            model_name='faculty',
            name='academic_year',
            field=models.CharField(choices=[('1', '2015'), ('2', '2016'), ('3', '2017'), ('4', '2018'), ('5', '2019')], max_length=50, null=True, verbose_name='Academic Year'),
        ),
        migrations.AlterField(
            model_name='faculty',
            name='name',
            field=models.CharField(choices=[('IT', 'Information Technology'), ('BM', 'Business Management'), ('MS', 'Medical Science'), ('ME', 'Mechantronic Engineering'), ('AF', 'Accounting and Financial')], max_length=50, null=True, verbose_name='Faculty Name'),
        ),
    ]
