from rest_framework import serializers
from home.models import *


class BookSerializer(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = (
            'id',
            'title',
            'description',
            'author',
            'pCompany',
            'genre',
            'price',
            'pages',
            'publishDate',
            'cover'
        )
