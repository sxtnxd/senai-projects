from django.urls import path
from . import views
from .views import *

urlpatterns = [
    path('', views.index, name='home'),
    path('usuarios/signup', views.registerUser, name='register'),
    path('usuarios/signin', views.loginUser, name='login'),
    path('usuarios/logout', views.logoutUser, name='logout'),
    path('usuarios/appointment', views.appointmentUser, name='appointment'),
    path('usuarios/schedules', views.schedulesUser, name='schedules'),

    path('api/appointments/', AppointmentAPIView.as_view(), name='appointments'),
    path('api/medic/', MedicAPIView.as_view(), name='medic'),
]
