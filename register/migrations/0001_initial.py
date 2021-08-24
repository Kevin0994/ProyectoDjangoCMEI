# Generated by Django 3.2.6 on 2021-08-24 21:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=50)),
                ('nombre', models.CharField(max_length=150)),
                ('piso', models.CharField(max_length=50)),
                ('dependencia', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'departamento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Equipo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cod_cmei', models.CharField(max_length=100)),
                ('enlace', models.CharField(max_length=500)),
            ],
            options={
                'db_table': 'equipo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=500)),
                ('apellidos', models.CharField(max_length=500)),
                ('correo', models.CharField(max_length=500)),
            ],
            options={
                'db_table': 'usuario',
                'managed': False,
            },
        ),
    ]