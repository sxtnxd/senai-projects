from django.contrib import admin
from .models import Product, Category, Menu, Comsuption, OrderSheet, OrderItem, Client, Employee, Address


# Register your models here.
@admin.register(Product)
class deProduct(admin.ModelAdmin):
    list_display = ('id', 'name', 'quantity', 'unit_price')

@admin.register(Category)
class detCategory(admin.ModelAdmin):
    list_display = ('id', 'name')

@admin.register(Client)
class detClient(admin.ModelAdmin):
    list_display = ('id', 'name', 'phone', 'email', 'pwd')

@admin.register(Employee)
class detEmployee(admin.ModelAdmin):
    list_display = ('id', 'name', 'email', 'pwd')

@admin.register(Address)
class detAddress(admin.ModelAdmin):
    list_display = ('id', 'client', 'cep', 'number', 'street', 'city', 'country')

admin.site.register(Menu)

@admin.register(OrderItem)
class detOrderItem(admin.ModelAdmin):
	let_display = ('id', 'order', 'menu', 'quantity')

@admin.register(Comsuption)
class detComsuption(admin.ModelAdmin):
    list_display = ('id', 'menu', 'product', 'quantity')

admin.site.register(OrderSheet)
