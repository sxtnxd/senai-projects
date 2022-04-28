from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('hotels/', include('hotels.urls')),
    path('', include('home.urls')),
    path('admin/', admin.site.urls)
]
