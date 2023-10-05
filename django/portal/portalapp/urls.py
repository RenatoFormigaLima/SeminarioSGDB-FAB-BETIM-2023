from django.urls import path
from . import views

urlpatterns = [
    path('', views.login, name="Login"),
    path('logged',views.home,name="Home"),
    path('create',views.create,name="Create"),
    path('list',views.list,name="ListAll"),
    path('search/<str:nome>',views.search,name="search_nome"),
    path('alter/<str:nome>',views.alter,name="Alter"),
    path('delete/<str:nome>',views.delete,name="Delete"),
    path('all/', views.getAllData, name="todosDadosAPI"),
    path('home', views.home)
]