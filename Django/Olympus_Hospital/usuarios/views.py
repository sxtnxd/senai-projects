from django.shortcuts import render, redirect
from django.contrib import messages, auth
from django.contrib.auth import login, authenticate, logout
from rest_framework.views import APIView
from rest_framework.response import Response
from .forms import *
from .models import *
from .serializers import *
from rest_framework import status


def index(request):
    return render(request, 'index.html')


def registerUser(request):
    form = RegisterForm()
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
        else:
            messages.add_message(request, messages.ERROR, 'Fill in the fields correctly.')

    return render(request, 'register.html', {'form':form})


def loginUser(request):

    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.add_message(request, messages.ERROR, 'Wrong username or password.')
    return render(request, 'login.html')


def logoutUser(request):
    logout(request)
    messages.add_message(request, messages.INFO, 'Successfully logged out. Thank You!')
    return redirect('login')


def appointmentUser(request):
    form = AppointmentForm()
    if request.method == 'POST':
        form = AppointmentForm(request.POST)
        if form.is_valid():
            ts = form.save(commit=False)
            ts.user = request.user
            ts.save()
            return redirect('home')
    return render(request, 'appointment.html', {'form':form})


def schedulesUser(request):
    isMedic = Medic.objects.filter(user=request.user.id).first()
    if isMedic is None:
        data = Appointment.objects.filter(user=request.user.id)
    else:
        data = Appointment.objects.filter(medic=isMedic.id)

    return render(request, 'schedules.html', {'data':data})


class MedicAPIView(APIView):
    def get(self,request):
        medic = Medic.objects.all()
        serializer = MedicSerializer(medic, many=True)
        return Response(serializer.data)


class AppointmentAPIView(APIView):
    def get(self, request):
        ap = Appointment.objects.all()
        serializer = AppointmentSerializer(ap, many=True)
        return Response(serializer.data)

    def post(self,request):
        serializer = MedicSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        return Response({'msg':'Successfully inserted'})
