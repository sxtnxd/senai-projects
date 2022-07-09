from rest_framework import serializers
from .models import *

#User
class UserTechSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserTech
        fields = ['id', 'name']

#Devices
class DevicesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Devices
        fields = '__all__'

#Comments
class CommentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comments
        fields = '__all__'

#Parte GET dos Comments
class CommentsGetSerializer(serializers.ModelSerializer):
    userFK = UserTechSerializer(read_only=True)
    deviceFK = DevicesSerializer(read_only=True)
    
    class Meta:
        model = Comments
        fields = '__all__'