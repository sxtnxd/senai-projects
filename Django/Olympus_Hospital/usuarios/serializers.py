from rest_framework import serializers
from .models import *

class MedicSerializer(serializers.ModelSerializer):
    class Meta:
        extra_kwargs = {
            "email": {"write_only": True}
        }

        model = Medic
        fields = (
            'user',
            'bio',
            'avaliable',
            'role',
        )

class AppointmentSerializer(serializers.ModelSerializer):
    class Meta:
        extra_kwargs = {
            "email": {"write_only": True}
        }

        model = Appointment
        fields = (
            'medic',
            'user',
            'description',
            'date',
            'created',
            'status',
        )