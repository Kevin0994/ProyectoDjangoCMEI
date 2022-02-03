from django.urls import path,include
from . import views
urlpatterns=[
    path('signup',views.registro_usuario,name='registro_usuario'),
    path('signup1',views.registro_adminiistrador,name='registro_adminiistrador'),
    
]