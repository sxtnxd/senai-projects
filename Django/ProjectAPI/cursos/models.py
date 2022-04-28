from django.db import models


class Curso(models.Model):
    name = models.CharField(max_length=30)
    create = models.DateTimeField(auto_now_add=True)
    description = models.CharField(max_length=200)
    price = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        verbose_name = 'Curso'

    def __str__(self):
        return self.name
