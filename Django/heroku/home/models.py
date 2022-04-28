from django.db import models


class books(models.Model):

    title = models.CharField(max_length=50)
    description = models.CharField(max_length=200)
    writer = models.CharField(max_length=50)
    publish_date = models.DateTimeField()
    company = models.CharField(max_length=30)
    cover = models.ImageField(blank=True, upload_to='fotos/%y/%m/%d/')

    def __str__(self):
        return self.title
