from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .forms import DepartamentRegistration, UserRegistration
from .models import Departamento, Usuario
from django.http import JsonResponse
# Create your views here.

@login_required
def home(request):
    return render(request, 'index.html')

@login_required
def departament(request):
    form = DepartamentRegistration()
    depa = Departamento.objects.all()
    return render(request, 'register/departamento.html', {'formDepa': form, 'dep': depa})

@login_required
def save_data_departament(request):
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
def delete_data_departament(request):
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
def edit_data_departament(request):
    if request.method == "POST":
        id = request.POST.get('did')
        se = request.POST.get('de')
        selnombre = Departamento.objects.filter(pk=se)
        if selnombre.exists():
            se = selnombre.first().nombre
        departament = Departamento.objects.get(pk=id)
        depart_data = {"id": departament.id, "tipo": departament.tipo, "nombre": departament.nombre, "piso": departament.piso, "dependencia": departament.dependencia, "selnombre":se }
        return JsonResponse(depart_data)

@login_required
def users(request):
    form = UserRegistration()
    usr = Usuario.objects.all()
    return render(request, 'register/usuario.html', {'formUsr': form, 'usrs': usr})

def save_data_users(request):
    if request.method == "POST":
        uid = request.POST['usrid']
        nombre = request.POST['nombre']
        apellidos = request.POST['apellidos']
        correo = request.POST['correo']
        nombreDepa = request.POST['departamento']
        departamento = Departamento.objects.filter(nombre=nombreDepa)
        if departamento.exists():
            departamento_id = departamento.first().id
        if(uid==''):
            usr = Usuario(departamento_id=departamento_id, nombre=nombre, apellidos=apellidos, correo=correo)
        else:
            usr = Usuario(id=uid, departamento_id=departamento_id, nombre=nombre, apellidos=apellidos, correo=correo)
        usr.save()
        user = Usuario.objects.values()
        #print(stud)
        user_data = list(user)
        return JsonResponse({'status': 'Save',
                             'user_data': user_data})

#Delete Data
def delete_data_users(request):
    if request.method == "POST":
        id = request.POST.get('uid')
        pi = Usuario.objects.get(pk=id)
        pi.delete()
        return JsonResponse({'status': 1})
    else:
        return JsonResponse({'status': 0})

#Edit Data
def edit_data_users(request):
    if request.method == "POST":
        id = request.POST.get('uid')
        usuario = Usuario.objects.get(pk=id)
        depart_name = usuario.departamento.nombre
        usuario_data = {"id": usuario.id, "departamento": depart_name, "nombre": usuario.nombre, "apellidos": usuario.apellidos, "correo": usuario.correo }
        return JsonResponse(usuario_data)