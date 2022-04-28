from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Curso, Avaliacao
from .serializers import CursoSerializer, AvaliacaoSerializer
from rest_framework import status


class CursoAPIView(APIView):

    def get(self, request):
        curso = Curso.objects.all()
        '''many=True para muitos objetos'''
        serializer = CursoSerializer(curso, many=True)
        # gerando JSON
        return Response(serializer.data)


class AvaliacaoAPIView(APIView):
    def get(self, request):
        av = Avaliacao.objects.all()
        serializer = AvaliacaoSerializer(av, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = CursoSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        # return Response({"msg": "Inserido com sucesso"})
        return Response({"id": serializer.data['id']})
        # return Response(serializer.data, status=status.HTTP_201_CREATED)
