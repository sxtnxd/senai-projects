from django.contrib import admin
from django.urls import path, include
from home import views
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('', views.index, name='home'),
    path('admin/', admin.site.urls),
    path('pre/', views.presale, name='pre'),
    path('trending/', views.trending, name='trending'),
    path('<int:idbusca>', views.mostrar, name='info'),
    path('buscar/', views.buscar, name='buscar'),
    path('auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('api/v1/', include('home.urls')),
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
