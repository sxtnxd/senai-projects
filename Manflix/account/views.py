from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from .models import User
from django.contrib import auth


def fpage(request):
    return render(request, 'home.html')
    
def Login(request):
    if request.method == 'POST':
        email = request.POST['username']
        password = request.POST['password']
        #CHECA SE O USUÁRIO ECISTE NO BANCO DE DADOS E SE É VALIDO
        user = authenticate(email=email, password=password)
        if user is not None:
            #CASO O USUARIO SEJA VALIDADO, ELE VAI LOGAR
            login(request, user)
            #REDIRECIONADO PARA A PAGE HOME
            return redirect('index')

    # CASO NÃO FOR VALIDO, RETORNA PARA A PAGE DE LOGIN
    return render(request, 'login.html')


def Register(request):
    if request.method == 'POST':
        email = request.POST['username']
        pwd1 = request.POST['password1']
        pwd2 = request.POST['password2']

        #CHECA SE NENHUM CAMPO ESTA VAZIO
        if email and pwd1 and pwd2:

            #CHECA SE AS SENHAS ESTÃO IGUAIS
            if pwd1 == pwd2:
                #CRIA USER
                created = User.objects.create_user(
                    email=email,
                    password=pwd1
                )
                #LOGA COM O USÁRIO CRIADO
                login(request, created)
                #REDIRECIONA PARA A PAGE HOME
                return redirect('index')

    #CASO TENHA ALGO DE ERRADO COM O PREENCHIMENTO DO FORM, ELE VOLTA PARA A PAGE DE REGISTRO
    return render(request, 'register.html')


@login_required(login_url='login')
def Index(request):
    return render(request, 'index.html')


def logout(request):
    auth.logout(request)
    return redirect('firstpage')
