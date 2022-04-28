from django.db import models


class Base(models.Model):
    create = models.DateTimeField(auto_now_add=True)
    update = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class Book(Base):
    GENRE = (
        ('FF', 'Fantasy & Fiction'),
        ('HT', 'Horror, Crime & Thriller'),
        ('AA', 'Action & Adventure'),
        ('C', 'Classics'),
        ('CB', 'Comic Book'),
        ('M', 'Mistery'),

    )

    title = models.CharField(max_length=50, default=None)
    description = models.CharField(max_length=300, default=None)
    author = models.CharField(max_length=60, default=None)
    pCompany = models.CharField(max_length=30, default=None)
    genre = models.CharField(max_length=2, choices=GENRE)
    price = models.DecimalField(decimal_places=2, max_digits=10, default=None)
    pages = models.IntegerField()
    publishDate = models.DateField()
    cover = models.ImageField(blank=True, upload_to='cover/%y/%m/%d')
    sales = models.IntegerField(default=0)

    def __str__(self):
        return self.title


class Quote(Base):
    title = models.ForeignKey(Book, on_delete=models.CASCADE)
    quote = models.CharField(blank=True, max_length=100, default=None)
    authorQ = models.CharField(max_length=60, default=None)
