from django.urls import path
from .views import cursoAPIView

urlpatterns = [
    path('cursos/', cursoAPIView.as_view(), name='cursos')
]
