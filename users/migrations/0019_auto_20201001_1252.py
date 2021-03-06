# Generated by Django 3.2 on 2020-10-01 06:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0018_user_role'),
    ]

    operations = [
        migrations.AlterField(
            model_name='faculty',
            name='name',
            field=models.CharField(choices=[('IT', 'Information Technology'), ('BM', 'Business Management'), ('MS', 'Medical Science'), ('ME', 'Mechantronic Engineering'), ('AF', 'Accounting and Financial')], max_length=50, null=True, unique=True, verbose_name='Faculty Name'),
        ),
        migrations.AlterField(
            model_name='user',
            name='role',
            field=models.CharField(choices=[('A', 'Admin'), ('S', 'Student'), ('MC', 'Marketing Coordinator'), ('MM', 'Marketing Manager')], max_length=30, null=True, verbose_name='Role'),
        ),
    ]
