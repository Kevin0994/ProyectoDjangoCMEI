from django import forms
from .models import Departamento,Equipo

class DepartamentRegistration(forms.ModelForm):

    class Meta:
        model = Departamento
        fields = ['tipo','nombre','piso','dependencia']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control',
            'id': 'nombreid'}),
            'piso': forms.TextInput(attrs={'class': 'form-control',
            'id': 'pisoid'}),
            'dependencia': forms.NumberInput(attrs={'class': 'form-control',
            'id': 'dependenciaid'}),
        }

        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)

            self.fields['tipo'].widget.attrs.update({
                'class': 'form-control',
            })
