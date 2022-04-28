from django.contrib import admin
from .models import *

# Register your models here.


class detBook(admin.ModelAdmin):
    list_display = ('id', 'title', 'author', 'cover', 'description')


admin.site.register(Book, detBook)
admin.site.register(Quote)
