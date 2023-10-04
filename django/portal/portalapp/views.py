from django.shortcuts import render, HttpResponse
from django.views.decorators.http import require_http_methods
import json
from . import models
import requests
def login(request):
    return render(request,'home.html')



def home(request):
    return HttpResponse("Hello World!")






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