from django.db import models
from stdimage import StdImageField
from django.contrib.auth.models import User


class Base(models.Model):
    create = models.DateTimeField(auto_now_add=True)
    update = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class Medic(Base):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    bio = models.TextField(blank=True)
    avaliable = models.BooleanField(default=True)
    role = models.CharField(max_length=70)


    def __str__(self):
        return f'{self.user.first_name} {self.user.last_name}'


class Appointment(Base):
    medic = models.ForeignKey(Medic, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    description = models.TextField(blank=True)
    date = models.DateTimeField(null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True, blank=True)
    status = models.BooleanField(default=False)

    def __str__(self):
        return f'{self.medic} - {self.user}'
