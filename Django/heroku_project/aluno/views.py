from django.shortcuts import render
from django.contrib import messages
from .form import Aluno


def index(request):
    return render(request, 'aluno/index.html')


def create(request):
    aluno = Aluno(request.POST or None)
    if str(request.method) == 'POST':
        if not aluno.is_valid():
            messages.error(request, 'erro ao enviar')

        else:
            nome = aluno.cleaned_data['nome']
            email = aluno.cleaned_data['email']
            obs = aluno.cleaned_data['obs']

            messages.success(request, 'salvo com sucesso')
            aluno = Aluno()

    contexto = {
        'form': aluno,
    }

    return render(request, 'aluno/cadastro.html', contexto)
