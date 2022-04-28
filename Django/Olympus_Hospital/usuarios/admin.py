from django.contrib import admin
from .models import Appointment, Medic

# Register your models here.
admin.site.register(Medic)
admin.site.register(Appointment)
