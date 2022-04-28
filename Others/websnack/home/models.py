from django.db import models


# Create your models here.
class Product(models.Model):
	name = models.CharField(max_length=75)
	quantity = models.IntegerField()
	unit_price = models.DecimalField(max_digits=7, decimal_places=2)

	def __str__(self):
		return self.name


class Category(models.Model):
	name = models.CharField(max_length=50)

	def __str__(self):
		return self.name


class Menu(models.Model):
	name = models.CharField(max_length=75)
	description = models.TextField()
	image = models.ImageField(	upload_to='menu_images/')
	price = models.DecimalField(max_digits=5, decimal_places=2)
	category = models.ManyToManyField(Category, related_name='item')

	def __str__(self):
		return self.name


class Comsuption(models.Model):
	menu = models.ForeignKey(Menu, on_delete=models.CASCADE)
	product = models.ForeignKey(Product, on_delete=models.CASCADE)
	quantity = models.IntegerField()

	def __str__(self):
		return f'{self.menu}'


class Client(models.Model):
	name = models.CharField(max_length=75)
	phone = models.CharField(max_length=20)
	email = models.CharField(max_length=50)
	pwd = models.CharField(max_length=50)

	def __str__(self):
		return self.name


class Employee(models.Model):
	name = models.CharField(max_length=75)
	email = models.CharField(max_length=50)
	pwd = models.CharField(max_length=50)

	def __str__(self):
		return self.name


class Address(models.Model):
	client = models.ForeignKey(Client, on_delete=models.CASCADE)
	street = models.CharField(max_length=50)
	city = models.CharField(max_length=40)
	state = models.CharField(max_length=40)
	cep = models.CharField(max_length=8)
	country = models.CharField(max_length=40)
	number = models.IntegerField(default=None)

	def __str__(self):
		return f'{self.client}'


class OrderSheet(models.Model):
	client = models.ForeignKey(Client, on_delete=models.CASCADE)
	employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
	created = models.DateTimeField(auto_now_add=True)

	def __str__(self):
		return f'Order {self.client}'


class OrderItem(models.Model):
	order = models.ForeignKey(OrderSheet, on_delete=models.CASCADE) 
	menu = models.ForeignKey(Menu, on_delete=models.CASCADE)
	quantity = models.IntegerField()

	def __str__(self):
		return f'Item {self.menu} with {self.quantity} qtd'
