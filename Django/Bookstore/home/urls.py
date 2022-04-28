from django.urls import path, include
from .views import BookAPIView
from home import views

urlpatterns = [
    path('books/', BookAPIView.as_view(), name='books'),
]
