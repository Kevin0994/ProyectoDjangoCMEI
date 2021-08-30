from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .forms import DepartamentRegistration
from .models import Departamento
from django.http import JsonResponse
# Create your views here.

@login_required
def home(request):
    return render(request, 'index.html')

@login_required
def departament(request):
    form = DepartamentRegistration()
    depa = Departamento.objects.all()
    return render(request, 'departamento/departamento.html', {'formDepa': form, 'dep': depa})

@login_required
def save_data(request):
    if request.method == "POST":
        did = request.POST['depid']
        tipo = request.POST['tipo']
        nombre = request.POST['nombre']
        piso = request.POST['piso']
        nmdep = request.POST['dependencia']
        dependencia = Departamento.objects.filter(nombre=nmdep)
        if dependencia.exists():
            depa=dependencia.first().id
        else:
            depa=0

        if(did==''):
            usr = Departamento(tipo=tipo,nombre=nombre,piso=piso,dependencia=depa)
        else:
            usr = Departamento(id=did, tipo=tipo,nombre=nombre,piso=piso,dependencia=depa)
        usr.save()
        dep = Departamento.objects.values()
        depart_data = list(dep)
        return JsonResponse({'status': 'Save',
                             'depart_data': depart_data})


#Delete Data
@login_required
def delete_data(request):
    try:
        if request.method == "POST":
            id = request.POST.get('did')
            pi = Departamento.objects.get(pk=id)
            pi.delete()
            return JsonResponse({'status': 1})
        else:
            return JsonResponse({'status': 0})
    except Exception as e:
        return JsonResponse({'status': 0})

#Edit Data
@login_required
def edit_data(request):
    if request.method == "POST":
        id = request.POST.get('did')
        departament = Departamento.objects.get(pk=id)
        depart_data = {"id": departament.id, "tipo": departament.tipo, "nombre": departament.nombre, "piso": departament.piso, "dependencia": departament.dependencia }
        return JsonResponse(depart_data)