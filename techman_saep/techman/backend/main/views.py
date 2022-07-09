import datetime
from django.shortcuts import render
from .models import *  # NOQA
from .serializers import * # NOQA
from rest_framework.views import APIView
from rest_framework.response import Response

#User
class UserTechAPIView(APIView):
    #GET
    def get(self, request, pk=''):
        if pk == '':
            user = UserTech.objects.all()
            #converte para json
            serializer = UserTechSerializer(user, many=True)
            return Response({'data': serializer.data})
        else:
            user = UserTech.objects.get(id=pk)
            serializer = UserTechSerializer(user, many=True)
            return Response({'data': serializer.data})

    #POST 
    def post(self,request):
        if 'auth' in request.GET:
            password = request.data['auth']
            user = UserTech.objects.filter(password=password)
            if user:
                serializer = UserTechSerializer(user, many=True)
                return Response({'data': serializer.data})
            else:
                return Response({'msg': 'Usuário não encontrado'})

        else:
            serializer = UserTechSerializer(data=request.data, many=True)
            #verifica se é valido
            serializer.is_valid(raise_exception=True)
            serializer.save()
            
            return Response({'msg': 'Inserido com Sucesso!'})

    #PUT 
    def put(self,request, pk=''):
        if pk != '':
            user = UserTech.objects.get(id=pk)
            serializer = UserTechSerializer(user, data=request.data)
            #verifica se é valido
            serializer.is_valid(raise_exception=True)
            serializer.save()
            
            return Response({'data': serializer.data})
        else:
            return Response({'msg': 'Falta Informar PK'})

    #DELETE
    def delete(self,request, pk=''):
        if pk != '':
            user = UserTech.objects.get(id=pk)
            user.delete()
            
            return Response({'msg': 'Deletado com Sucesso'})
        else:
            return Response({'msg': 'Falta Informar PK'})

#Devices
class DevicesAPIView(APIView):
    #GET
    def get(self, request, pk=''):
        if 'ano' in request.GET:
            ano = request.GET['ano']
            device = Devices.objects.filter(date__gte=datetime.date(ano,1,1))
            serializer = DevicesSerializer(device, many=True)

            return Response({'data': serializer.data})

        elif pk == '':
            devices = Devices.objects.all()
            #converte para json
            serializer = DevicesSerializer(devices, many=True)
            return Response({'data': serializer.data})
        else:
            devices = Devices.objects.get(id=pk)
            serializer = DevicesSerializer(devices, many=True)
            return Response({'data': serializer.data})

    #POST 
    def post(self,request):
        serializer = DevicesSerializer(data=request.data, many=True)
        #verifica se é valido
        serializer.is_valid(raise_exception=True)
        serializer.save()
        
        return Response({'msg': 'Inserido com Sucesso!'})

    #PUT 
    def put(self,request, pk=''):
        if pk != '':
            devices = Devices.objects.get(id=pk)
            serializer = DevicesSerializer(devices, data=request.data)
            #verifica se é valido
            serializer.is_valid(raise_exception=True)
            serializer.save()
            
            return Response({'data': serializer.data})
        else:
            return Response({'msg': 'Falta Informar PK'})

    #DELETE
    def delete(self,request, pk=''):
        if pk != '':
            devices = Devices.objects.get(id=pk)
            devices.delete()
            
            return Response({'msg': 'Deletado com Sucesso'})
        else:
            return Response({'msg': 'Falta Informar PK'})

#Comments
class CommentsAPIView(APIView):
    #GET
    def get(self, request, pk=''):
        if 'orderByUser' in request.GET:
            comments = Comments.objects.all().order_by('UserFK', 'name')
            serializer = CommentsGetSerializer(comments, many=True)
        elif pk == '':
            comments = Comments.objects.all()
            #converte para json
            serializer = CommentsGetSerializer(comments, many=True)
            return Response({'data': serializer.data})
        else:
            comments = Comments.objects.get(id=pk)
            serializer = CommentsGetSerializer(comments, many=True)
            return Response({'data': serializer.data})

    #POST 
    def post(self,request):
        serializer = CommentsSerializer(data=request.data, many=True)
        #verifica se é valido
        serializer.is_valid(raise_exception=True)
        serializer.save()
        
        return Response({'msg': 'Inserido com Sucesso!'})

    #PUT 
    def put(self,request, pk=''):
        if pk != '':
            comments = Comments.objects.get(id=pk)
            serializer = CommentsSerializer(comments, data=request.data)
            #verifica se é valido
            serializer.is_valid(raise_exception=True)
            serializer.save()
            
            return Response({'data': serializer.data})
        else:
            return Response({'msg': 'Falta Informar PK'})

    #DELETE
    def delete(self,request, pk=''):
        if pk != '':
            comments = Comments.objects.get(id=pk)
            comments.delete()
            
            return Response({'msg': 'Deletado com Sucesso'})
        else:
            return Response({'msg': 'Falta Informar PK'})
