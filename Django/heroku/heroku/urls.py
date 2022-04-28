from django.contrib import admin
from django.urls import path
from home import views
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('', views.index, name='home'),
    path('admin/', admin.site.urls),
    path('presale/', views.presale, name='pre'),
    path('trending/', views.trending, name='trending')
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
