from django.shortcuts import render,redirect
from .models import usuario,administrador
from django.contrib.auth.hashers import make_password, check_password
from django.contrib import messages
# Create your views here.
def registro_usuario(request):
    if request.session.get('username', None) and request.session.get('type', None) == 'usuario':
        return redirect('login')
    if request.session.get('username', None) and request.session.get('type', None) == 'administrador':
        return redirect('login')
    if request.method == "POST":
        username = request.POST['username']
        email = request.POST['email']
        if usuario.objects.filter(username=username) or usuario.objects.filter(email=email):
            messages.warning(
                request, "Account already exist, please Login to continue")
        else:
            password = request.POST['password']
            direccion = request.POST['direccion']
            foto_perfil = request.FILES.get('foto_perfil', None)
            telefono = request.POST['telefono']
            estado = request.POST['estado']
            error = []
            if(len(username) < 3):
                error.append(1)
                messages.warning(
                    request, "Username Field must be greater than 3 character.")
            if(len(password) < 5):
                error.append(1)
                messages.warning(
                    request, "Password Field must be greater than 5 character.")
            if(len(email) == 0):
                error.append(1)
                messages.warning(request, "Email field can't be empty")
            if(len(telefono) != 10):
                error.append(1)
                messages.warning(
                    request, "Valid Phone number is a 10 digit-integer.")
            if(len(error) == 0):
                password_hash = make_password(password)
                customer = usuario(username=username, password=password_hash, email=email, telefono=telefono,
                                    direccion=direccion, estado=estado, foto_perfil=foto_perfil)
                customer.save()
                messages.info(
                    request, "Account Created Successfully, please Login to continue")
                redirect('registro_usuario')
            else:
                redirect('registro_usuario')

    else:
        redirect('registro_usuario')
    return render(request, 'registration/registro_usurio.html', {})


def registro_adminiistrador(request):
    if request.session.get('username', None) and request.session.get('type', None) == 'usuario':
        return redirect('login')
    if request.session.get('username', None) and request.session.get('type', None) == 'administrador':
        return redirect('login')
    if request.method == "POST":
        username = request.POST['username']
        email = request.POST['email']
        if administrador.objects.filter(username=username) or administrador.objects.filter(email=email):
            messages.warning(
                request, "Account already exist, please Login to continue")
        else:
            password = request.POST['password']
            foto_perfil = request.FILES.get('foto_perfil', None)
            telefono = request.POST['telefono']
            error = []
            if(len(username) < 3):
                error.append(1)
                messages.warning(
                    request, "Username Field must be greater than 3 character.")
            if(len(password) < 5):
                error.append(1)
                messages.warning(
                    request, "Password Field must be greater than 5 character.")
            if(len(email) == 0):
                error.append(1)
                messages.warning(request, "Email field can't be empty")
            if(len(telefono) != 10):
                error.append(1)
                messages.warning(
                    request, "Valid Phone number is a 10 digit-integer.")
            if(len(error) == 0):
                password_hash = make_password(password)
                r_manager = administrador(username=username, password=password_hash,
                                        email=email, telefono=telefono, foto_perfil=foto_perfil)
                r_manager.save()
                messages.info(
                    request, "Account Created Successfully, Please login to continue")
                redirect('registro_adminiistrador')
            else:
                redirect('registro_adminiistrador')

    else:
        redirect('registro_adminiistrador')
    return render(request, 'registration/registro_admin.html', {})
