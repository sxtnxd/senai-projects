from django.shortcuts import render, get_object_or_404
from .models import *
from bookstore.serializers import BookSerializer
from rest_framework.views import APIView
from rest_framework.response import Response
from django.contrib import messages
from rest_framework import status


def index(request):
    dados = Book.objects.order_by('title')
    return render(request, 'home/index.html', {'dados': dados})


def presale(request):
    return render(request, 'home/pre.html')


def trending(request):
    return render(request, 'home/trending.html')


class BookAPIView(APIView):
    def get(self, request):
        book = Book.objects.all()
        serializer = BookSerializer(book, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = BookSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({{"id": serializer.data['id']}})


def mostrar(request, idbusca):
    dado = get_object_or_404(Book, id=idbusca)
    return render(request, 'home/info.html', {'dado': dado})


def buscar(request):
    x = request.GET['buscar']
    if x is None or not x:
        messages.add_message(request, messages.INFO, 'Digite um valor válido')
        return render(request, 'home/index.html')

    dados = Book.objects.order_by('titulo').filter(
        Q(titulo__icontains=x) | Q(descricao__icontains=x)
    )
    return render(request, 'home/index.html', {'dados': dados})
