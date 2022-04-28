# Generated by Django 3.2.4 on 2021-12-01 13:02

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('usuarios', '0003_auto_20211129_1527'),
    ]

    operations = [
        migrations.RenameField(
            model_name='appointment',
            old_name='accept',
            new_name='status',
        ),
        migrations.RenameField(
            model_name='medic',
            old_name='available',
            new_name='avaliable',
        ),
        migrations.AddField(
            model_name='appointment',
            name='active',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='appointment',
            name='create',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='appointment',
            name='update',
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.AddField(
            model_name='medic',
            name='active',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='medic',
            name='create',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='medic',
            name='update',
            field=models.DateTimeField(auto_now=True),
        ),
    ]