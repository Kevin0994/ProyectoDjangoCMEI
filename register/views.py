from django.contrib.auth.mixins import LoginRequiredMixin,PermissionRequiredMixin
from django.core.exceptions import PermissionDenied
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy
from django.views.generic import ListView, TemplateView

from .forms import DepartamentRegistration, UserRegistration, EquipoRegistration
#from .mixins import LoginYSuperUsuarioMixin
from .models import Departamento, Usuario, Equipo
from django.http import JsonResponse
# Create your views here.

@login_required
def home(request):
    return render(request, 'index.html')

@login_required
def permisos_Error(request):
    return render(request, 'index_error.html')

class IniciarDepartamentos(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = ('register.view_departamento',)
    template_name='register/departamento.html'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def get_context_data(self, **kwargs):
        form = DepartamentRegistration()
        depa = Departamento.objects.all()
        context = super(IniciarDepartamentos, self).get_context_data(**kwargs)
        context['formDepa'] = form
        context['dep']=depa
        return context


class SaveDepartament(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.add_departamento'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):

        if request.method == "POST":
            did = request.POST['depid']
            tipo = request.POST['tipo']
            nombre = request.POST['nombre']
            piso = request.POST['piso']
            nmdep = request.POST['dependencia']
            dependencia = Departamento.objects.filter(nombre=nmdep)
            if dependencia.exists():
                depa = dependencia.first().id
            else:
                depa = 0

            if (did == ''):
                usr = Departamento(tipo=tipo, nombre=nombre, piso=piso, dependencia=depa)
            else:
                usr = Departamento(id=did, tipo=tipo, nombre=nombre, piso=piso, dependencia=depa)
            usr.save()
            dep = Departamento.objects.values()
            depart_data = list(dep)
            return JsonResponse({'status': 'Save',
                                 'depart_data': depart_data})


#Delete Data
class DeleteDepartament(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.delete_departamento',

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):

        if request.method == "POST":
            id = request.POST.get('did')
            pi = Departamento.objects.get(pk=id)
            pi.delete()
            return JsonResponse({'status': 1})
        else:
            return JsonResponse({'status': 0})


class EditDepartament(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.change_departamento'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):
        if request.method == "POST":
            id = request.POST.get('did')
            se = request.POST.get('de')
            selnombre = Departamento.objects.filter(pk=se)
            if selnombre.exists():
                se = selnombre.first().nombre
            departament = Departamento.objects.get(pk=id)
            depart_data = {"id": departament.id, "tipo": departament.tipo, "nombre": departament.nombre,
                           "piso": departament.piso, "dependencia": departament.dependencia, "selnombre": se}
            return JsonResponse(depart_data)


class IniciarUsuarios(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.view_usuario',
    template_name='register/usuario.html'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def get_context_data(self, **kwargs):
        form = UserRegistration()
        usr = Usuario.objects.all()
        context = super(IniciarUsuarios, self).get_context_data(**kwargs)
        context['formUsr'] = form
        context['usrs']=usr
        return context

class SaveUser(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.add_usuario'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):
        if request.method == "POST":
            uid = request.POST['usrid']
            nombre = request.POST['nombre']
            apellidos = request.POST['apellidos']
            correo = request.POST['correo']
            nombreDepa = request.POST['departamento']
            departamento = Departamento.objects.filter(nombre=nombreDepa)
            if departamento.exists():
                departamento_id = departamento.first().id
            if (uid == ''):
                usr = Usuario(departamento_id=departamento_id, nombre=nombre, apellidos=apellidos, correo=correo)
            else:
                usr = Usuario(id=uid, departamento_id=departamento_id, nombre=nombre, apellidos=apellidos,
                              correo=correo)
            usr.save()
            user = Usuario.objects.values()
            # print(stud)
            user_data = list(user)
            return JsonResponse({'status': 'Save',
                                 'user_data': user_data})


#Delete Data
class DeleteUser(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.delete_usuario',

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):

        if request.method == "POST":
            id = request.POST.get('uid')
            pi = Usuario.objects.get(pk=id)
            pi.delete()
            return JsonResponse({'status': 1})
        else:
            return JsonResponse({'status': 0})



class EditUsuario(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.change_usuario'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):
        if request.method == "POST":
            id = request.POST.get('uid')
            usuario = Usuario.objects.get(pk=id)
            depart_name = usuario.departamento.nombre
            usuario_data = {"id": usuario.id, "departamento": depart_name, "nombre": usuario.nombre,
                            "apellidos": usuario.apellidos, "correo": usuario.correo}
            return JsonResponse(usuario_data)






class IniciarEquipos(LoginRequiredMixin,PermissionRequiredMixin,  TemplateView,PermissionDenied):
    permission_required = 'register.view_equipo',
    template_name='register/equipo.html'


    def handle_no_permission(self):
        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def get_context_data(self, **kwargs):
        form = EquipoRegistration()
        equ = Equipo.objects.all()
        context = super(IniciarEquipos, self).get_context_data(**kwargs)
        context['formEqu'] = form
        context['equ']=equ
        return context


class SaveEquipo(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.add_equipo'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):
        if request.method == "POST":
            eid = request.POST['qeuid']
            cod_cmei = request.POST['cod_cmei']
            enlace = request.POST['enlace']
            usuario_id = request.POST['usuario']
            if (eid == ''):
                eqp = Equipo(usuario_id=usuario_id, cod_cmei=cod_cmei, enlace=enlace)
            else:
                eqp = Equipo(id=eid, usuario_id=usuario_id, cod_cmei=cod_cmei, enlace=enlace)
            eqp.save()
            equipo = Equipo.objects.values()
            equipo_data = list(equipo)
            return JsonResponse({'status': 'Save',
                                 'user_data': equipo_data})


#Delete Data
class DeleteEquipo(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.delete_equipo',

    def post(self, request, *args, **kwargs):

        if request.method == "POST":
            id = request.POST.get('eid')
            pi = Equipo.objects.get(pk=id)
            pi.delete()
            return JsonResponse({'status': 1})
        else:
            return JsonResponse({'status': 0})

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))



class EditEquipo(LoginRequiredMixin,PermissionRequiredMixin, TemplateView):

    permission_required = 'register.change_equipo'

    def handle_no_permission(self):

        if self.raise_exception:
            raise PermissionDenied(self.get_permission_denied_message())
        return redirect(reverse_lazy('denied'))

    def post(self, request, *args, **kwargs):
        if request.method == "POST":
            id = request.POST.get('eid')
            equipo = Equipo.objects.get(pk=id)
            equipo_data = {"id": equipo.id, "usuario": equipo.usuario.id, "cod_cmei": equipo.cod_cmei,
                           "enlace": equipo.enlace}
            return JsonResponse(equipo_data)
