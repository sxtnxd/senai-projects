# Generated by Django 3.2.7 on 2021-09-28 13:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='books',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('description', models.CharField(max_length=200)),
                ('writer', models.CharField(max_length=50)),
                ('publish_date', models.DateTimeField()),
                ('company', models.CharField(max_length=30)),
                ('cover', models.ImageField(blank=True, upload_to='fotos/%y/%m/%d/')),
            ],
        ),
    ]
