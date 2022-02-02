"""djangoGADMM URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.urls.conf import include
from django.contrib.auth import views as auth_views
from django.conf.urls.static import static
from django.conf import settings
from register import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('register.urls')),
    path('accounts/', include('django.contrib.auth.urls'), name='login'),
    path('accounts/', include('django.contrib.auth.urls'), name='logout'),
    path('home/', views.home, name='index'),
    path('denied/', views.permisos_Error, name='denied'),
    path('departamento/', views.IniciarDepartamentos.as_view(), name='departamento'),
    path('departamento/save/', views.SaveDepartament.as_view(), name='savedepartamento'),
    path('departamento/delete/', views.DeleteDepartament.as_view(), name='deletedepartamento'),
    path('departamento/edit/', views.EditDepartament.as_view(), name='editdepartamento'),
    path('usuario/', views.IniciarUsuarios.as_view(), name='usuario'),
    path('usuario/save/', views.SaveUser.as_view(), name='saveusuario'),
    path('usuario/delete/', views.DeleteUser.as_view(), name='deleteusuario'),
    path('usuario/edit/', views.EditUsuario.as_view(), name='editusuario'),
    path('equipo/', views.IniciarEquipos.as_view(), name='equipo'),
    path('equipo/save/', views.SaveEquipo.as_view(), name='savequipo'),
    path('equipo/delete/', views.DeleteEquipo.as_view(), name='deletequipo'),
    path('equipo/edit/', views.EditEquipo.as_view(), name='editequipo'),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)

