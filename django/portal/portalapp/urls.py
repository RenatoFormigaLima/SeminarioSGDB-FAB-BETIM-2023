from django.urls import path
from . import views

urlpatterns = [
    path('', views.login, name="Login"),
    path('logged',views.home,name="Home"),
    path('create',views.create,name="Create"),
    path('list',views.listall,name="ListAll"),
    path('search/{name}',views.search,name="Search"),
    path('alter/{name}',views.alter,name="Alter"),
    path('delete/{name}',views.delete,name="Delete")

]