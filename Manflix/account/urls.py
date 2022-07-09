from django.urls import path
from . import views as v

urlpatterns = [
    path('login', v.Login, name='login'),
    path('register', v.Register, name='register'),

    path('home', v.Index, name='index'),
    path('', v.fpage, name='firstpage'),
    path('', v.logout, name='logout'),
    
]
