from django.shortcuts import render
from django.views.generic import TemplateView
from home.models import *


class indexView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):

        context = super(indexView, self).get_context_data(**kwargs)
        context['data_services'] = Service.objects.order_by('?').all()
        context['data_team'] = Team.objects.all()

        return context
