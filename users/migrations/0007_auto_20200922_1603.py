# Generated by Django 3.2 on 2020-09-22 16:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0006_auto_20200922_1551'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='faculty',
            name='closure_date',
        ),
        migrations.AddField(
            model_name='faculty',
            name='final_closure_date',
            field=models.DateField(null=True, verbose_name='Final Closure Date'),
        ),
        migrations.AddField(
            model_name='faculty',
            name='new_closure_date',
            field=models.DateField(null=True, verbose_name='New Entries Closure Date'),
        ),
    ]
