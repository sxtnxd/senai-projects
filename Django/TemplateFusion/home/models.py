from django.db import models
from stdimage import StdImageField
import uuid


def change_name(_instance, filename):
    type_ext = filename.split('.')[-1]
    filename = f'{uuid.uuid4()}.{type_ext}'
    return filename


class Base(models.Model):
    created = models.DateTimeField('creation', auto_now_add=True)
    modified = models.DateTimeField('modification', auto_now=True)
    ativo = models.BooleanField(default=True)

    class Meta:
        abstract = True


class Service(Base):

    ICONS = (
        ('lni-cog', 'Gear'),
        ('lni-starts-up', 'Graphic'),
        ('lni-users', 'Config'),
        ('lni-layers', 'Design'),
        ('lni-mobile', 'Mobile'),
        ('lni-rocket', 'Rocket')
    )
    title = models.CharField(max_length=30)
    description = models.CharField(max_length=200)
    icon = models.CharField(max_length=13, choices=ICONS)

    class META:
        verbose_name: 'SERVICE'
        verbose_name_plural: 'SERVICES'

    def __str__(self):
        return self.title


class Role(Base):
    role = models.CharField(max_length=50)

    class Meta:
        verbose_name = 'role'
        verbose_name_plural = 'roles'

    def __str__(self):
        return self.role


class Team(Base):
    name = models.CharField(max_length=30)
    role = models.ForeignKey(Role, verbose_name='role', on_delete=models.CASCADE)
    bio = models.CharField(max_length=200)
    facebook = models.CharField('Facebook', max_length=200, default='#')
    twitter = models.CharField('Twitter', max_length=200, default='#')
    instagram = models.CharField('Instagram', max_length=200, default='#')
    photo = StdImageField('Photo', upload_to=change_name, variations={'thumb': {'width': 480, 'height': 480}})

    class Meta:
        verbose_name = 'Team'
        verbose_name_plural = 'Teams'

    def __str__(self):
        return self.name
