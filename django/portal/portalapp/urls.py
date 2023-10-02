from django.urls import path
from . import views

urlpatterns = [
    path('', views.login, name="Login"),
    path('logged',views.home,name="Home"),
    path('create',views.create,name="Create")
]