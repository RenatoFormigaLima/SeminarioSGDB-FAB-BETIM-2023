from django.urls import path
from . import views

urlpatterns = [
    path('', views.login, name="Login"),
    path('logged',views.home,name="Home"),
    path('create',views.create,name="Create"),
    path('list',views.listall,name="ListAll"),
    path('search/<str:nome>',views.search,name="Search"),
    path('alter/<str:nome>',views.alter,name="Alter"),
    path('delete/<str:nome>',views.delete,name="Delete")

]