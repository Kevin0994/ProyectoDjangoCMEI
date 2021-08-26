from django.db import models

# Create your models here.

tipo_status=[
    (1, 'Direccion'),
    (2, 'Subdireccion'),
    (3, 'Seccion')

]

class Departamento(models.Model):
    tipo = models.IntegerField(
        null=False, blank=False,
        choices=tipo_status
    )
    nombre = models.CharField(max_length=150)
    piso = models.CharField(max_length=50)
    dependencia = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'departamento'

class Equipo(models.Model):
    usuario = models.ForeignKey('Usuario', models.DO_NOTHING)
    cod_cmei = models.CharField(max_length=100)
    enlace = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'equipo'


class Usuario(models.Model):
    departamento = models.ForeignKey(Departamento, models.DO_NOTHING, db_column='departamento_id', blank=True, null=True)
    nombre = models.CharField(max_length=500)
    apellidos = models.CharField(max_length=500)
    correo = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'usuario'