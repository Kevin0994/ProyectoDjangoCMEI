from django.forms import *
from .models import Departamento,Equipo, Tipo,Usuario

class DepartamentRegistration(ModelForm):

    Tipo = ModelChoiceField(queryset=Tipo.objects.all(), empty_label="",to_field_name="nombre",widget=Select(attrs={
        'class': 'form-control'
    }))
    Dependencia = ModelChoiceField(queryset=Departamento.objects.all(), empty_label="", to_field_name="nombre", widget=Select(attrs={
        'class': 'form-control'
    }))
    class Meta:
        model = Departamento
        fields = ['nombre','piso']
        widgets = {
            'nombre': TextInput(attrs={'class': 'form-control',
            'id': 'nombreid'}),
            'piso': TextInput(attrs={'class': 'form-control',
            'id': 'pisoid'}),
        }


class UserRegistration(ModelForm):

    Departamento = ModelChoiceField(queryset=Departamento.objects.all(), empty_label="", to_field_name="nombre", widget=Select(attrs={
        'class': 'form-control'
    }))
    class Meta:
        model = Usuario
        fields = ['nombre','apellidos','correo',]
        widgets = {
            'nombre': TextInput(attrs={'class': 'form-control',
            'id': 'nombreid'}),
            'apellidos': TextInput(attrs={'class': 'form-control',
            'id': 'apellidosid'}),
            'correo': TextInput(attrs={'class': 'form-control',
            'id': 'correoid'}),
        }

class EquipoRegistration(ModelForm):

    Usuario = ModelChoiceField(queryset=Usuario.objects.all(), empty_label="", to_field_name="id", widget=Select(attrs={
        'class': 'form-control'
    }))
    class Meta:
        model = Equipo
        fields = ['cod_cmei','enlace',]
        widgets = {
            'cod_cmei': TextInput(attrs={'class': 'form-control',
            'id': 'cod_cmeid'}),
            'enlace': TextInput(attrs={'class': 'form-control',
            'id': 'enlaceid'}),

        }
