from django import forms
from .models import Departamento

class DepartamentRegistration(forms.ModelForm):
    class Meta:
        model = Departamento
        fields = ['tipo','nombre','piso','dependencia']
        widgets = {
            'tipo':forms.TextInput(attrs={'class':'form-control',
            'id':'tipoid'}),
            'nombre': forms.TextInput(attrs={'class': 'form-control',
            'id': 'nombreid'}),
            'piso': forms.TextInput(attrs={'class': 'form-control',
            'id': 'pisoid'}),
            'dependencia': forms.NumberInput(attrs={'class': 'form-control',
            'id': 'dependenciaid'}),
        }
