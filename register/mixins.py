from django.shortcuts import redirect

class LoginYSuperUsuarioMixin(object):

    def dispatch(self, request, *arg, **kwargs):
        if request.user.is_authenticated:
            if request.user.is_staff:
                return super().dispatch(request, *arg, **kwargs)
        return redirect('index');

