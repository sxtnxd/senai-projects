from django.shortcuts import render


def index(request):
    return render(request, 'home/index.html')


def presale(request):
    return render(request, 'home/presale.html')


def trending(request):
    return render(request, 'home/trending.html')
