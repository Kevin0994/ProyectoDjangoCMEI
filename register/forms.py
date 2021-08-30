from django.forms import *
from .models import Departamento,Equipo, Tipo

class DepartamentRegistration(ModelForm):

    Tipo = ModelChoiceField(queryset=Tipo.objects.all(), empty_label="",to_field_name="nombre",widget=Select(attrs={
        'class': 'form-control'
    }))
    class Meta:
        model = Departamento
        fields = ['nombre','piso','dependencia']
        widgets = {
            'nombre': TextInput(attrs={'class': 'form-control',
            'id': 'nombreid'}),
            'piso': TextInput(attrs={'class': 'form-control',
            'id': 'pisoid'}),
            'dependencia': NumberInput(attrs={'class': 'form-control',
            'id': 'dependenciaid'}),

        }



#class SelectForm(Form):
#    categories = ModelChoiceField(queryset= Tipo.objects.all(),widget=Select(attrs={
#        'class': 'form-control'
#s   }))