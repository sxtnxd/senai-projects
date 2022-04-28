from django.contrib import admin
from .models import Curso


@admin.register(Curso)
class detCurso(admin.ModelAdmin):
    list_display = ('id', 'name', 'description', 'price')