# Generated by Django 3.2.4 on 2021-11-03 14:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_quote_authorq'),
    ]

    operations = [
        migrations.AlterField(
            model_name='quote',
            name='quote',
            field=models.CharField(blank=True, default=None, max_length=100),
        ),
    ]