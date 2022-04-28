from django.contrib import admin
from home.models import Service, Role, Team


@admin.register(Service)
class admService(admin.ModelAdmin):
    list_display = ('id',)


@admin.register(Role)
class admRole(admin.ModelAdmin):
    list_display = ('id',)


@admin.register(Team)
class admTeam(admin.ModelAdmin):
    list_display = ('id',)
