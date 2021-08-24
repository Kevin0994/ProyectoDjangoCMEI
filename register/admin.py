from django.contrib import admin
from register.models import Usuario, Departamento, Equipo


@admin.register(Usuario)
class ProfileAdmin(admin.ModelAdmin):
    """Profile admin."""

    list_display = ('pk', 'departamento_id', 'nombre', 'apellidos', 'correo')
    list_display_links = ('pk', 'correo',)

    search_fields = (
        'nombre',
        'apellidos',
        'correo'
    )

@admin.register(Departamento)
class ProfileAdmin(admin.ModelAdmin):
    """Profile admin."""
    list_display = ('pk', 'tipo', 'nombre', 'piso', 'dependencia')
    list_display_links = ('pk', 'tipo',)

    search_fields = (
        'nombre',
        'tipo',
        'id',
        'piso',
    )



@admin.register(Equipo)
class ProfileAdmin(admin.ModelAdmin):
    """Profile admin."""
    list_display = ('pk', 'usuario_id', 'cod_cmei', 'enlace')
    list_display_links = ('pk', 'enlace',)

    search_fields = (
        'usuario_id',
        'cod_cmei',
        'id',
    )

