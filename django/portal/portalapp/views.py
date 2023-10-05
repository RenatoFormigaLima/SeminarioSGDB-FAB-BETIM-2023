from django.shortcuts import render, HttpResponse
from django.views.decorators.http import require_http_methods
import json
from . import models
import requests
# import django.template
def login(request):
    return render(request,'login.html')



def home(request):
    return render('home.html')






def create(request):
    req = json.loads(request.body)
    r= requests.post('http://localhost:5000/create',json = req)
    return HttpResponse(r)
                


def list(request):
    r= requests.get('http://localhost:5000/get')
    return HttpResponse(r)



def search(request,nome):
    req = json.loads(request.body)
    r= requests.get('http://localhost:5000/get/'+nome)
    return HttpResponse(r)



def alter(request,nome):
    req = json.loads(request.body)
    r= requests.put('http://localhost:5000/alter/'+nome,json = req)
    return HttpResponse(r)



def delete(request,nome):
    req = json.loads(request.body)
    r= requests.delete('http://localhost:5000/delete/'+nome)
    return HttpResponse(r)

def getAllData(request):
    headers = {'Content-Type': "application/json"}
    models.dataTable.objects.all().delete()
    # req = json.loads(request.body)
    r= requests.get('http://localhost:52773/csp/Faculdade/aluno/allAlunos',headers=headers,auth=('', '')) #necessita do login e senha do user do IRIS
    
    Jitems = json.loads(r.text)
    print(Jitems)
    i = 0
    for jitem in Jitems:
        print(jitem)
        tabela = models.dataTable()
        tabela.id = i
        tabela.aluno = Jitems[str(i)]['aluno']
        tabela.professor = Jitems[str(i)]['professor']
        tabela.materia = Jitems[str(i)]['materia']
        tabela.save()
        i = i + 1 

    items= {
        "items": models.dataTable.objects.all()
    }
    # print(items)
    print(items)
    return render(request, "home.html",context=items)