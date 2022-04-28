from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Curso
from .serializers import CursoSerializer


class cursoAPIView(APIView):
    def get(self, request):
        data = Curso.objects.all()
        serial = CursoSerializer(data, many=True)

        return Response(serial.data)

    def post(self, request):
        serial = CursoSerializer(data=request.data)
        serial.is_valid(raise_exception=True)
        serial.save()
        return Response(serial.data)


def index(request):

    return render(request, 'cursos/index.html')
