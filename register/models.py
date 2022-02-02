from django.db import models

# Create your models here.

class Tipo(models.Model):
    nombre = models.CharField(max_length=70, null=True)
    descripcion = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.nombre


class Departamento(models.Model):
    tipo = models.CharField(null=False, blank=False,max_length=50)
    nombre = models.CharField(max_length=150)
    piso = models.CharField(max_length=50)
    dependencia = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'departamento'

    def __str__(self):
        return self.nombre

class Equipo(models.Model):
    usuario = models.ForeignKey('Usuario', models.DO_NOTHING)
    cod_cmei = models.CharField(max_length=100)
    enlace = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'equipo'



class Usuario(models.Model):
    departamento = models.ForeignKey(Departamento, db_column='departamento_id', blank=True, null=True,on_delete=models.CASCADE,)
    nombre = models.CharField(max_length=500)
    apellidos = models.CharField(max_length=500)
    correo = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'usuario'

    def __str__(self):
        return self.nombre