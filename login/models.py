from django.db import models
from PIL import Image
# Create your models here.
class usuario(models.Model):
    username=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    email=models.CharField(max_length=50)
    foto_perfil=models.ImageField(upload_to="media", height_field=None, width_field=None, max_length=None,blank=True)
    telefono=models.CharField(max_length=50)
    direccion=models.TextField()
    estado=models.CharField(max_length=30,blank=True)
    def __str__(self):
        return "usuario: "+self.username
class administrador(models.Model):
    username=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    email=models.CharField(max_length=50)
    foto_perfil=models.ImageField(upload_to="media", height_field=None, width_field=None, max_length=None,blank=True)
    telefono=models.CharField(max_length=50)
    genero=models.CharField(max_length=20)
    def __str__(self):
        return "administrador: "+self.username