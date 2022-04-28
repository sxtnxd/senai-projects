# Generated by Django 3.2.8 on 2021-10-26 12:00

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default=None, max_length=50)),
                ('description', models.CharField(default=None, max_length=200)),
                ('author', models.CharField(default=None, max_length=60)),
                ('pCompany', models.CharField(default=None, max_length=30)),
                ('genre', models.CharField(choices=[('FF', 'Fantasy & Fiction'), ('HT', 'Horror, Crime & Thriller'), ('AA', 'Action & Adventure'), ('C', 'Classics'), ('CB', 'Comic Book'), ('M', 'Mistery')], max_length=2)),
                ('price', models.DecimalField(decimal_places=2, default=None, max_digits=10)),
                ('pages', models.IntegerField()),
                ('publishDate', models.DateField()),
                ('cover', models.ImageField(blank=True, upload_to='cover/%y/%m/%d')),
            ],
        ),
    ]
