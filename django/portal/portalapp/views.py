from django.shortcuts import render, HttpResponse
from django.views.decorators.http import require_http_methods
import json
from . import models
import requests
def login(request):
    return render(request,'login.html')



def home(request):
    return HttpResponse("Hello World!")





@require_http_methods(["POST","GET"])
def create(request):
    req = json.loads(request.body)
    r= requests.post('http://localhost:5000/create',json = req)
    return HttpResponse(r)
                


def list(request):
    query = request.GET
    return HttpResponse(query)



def search(request):
    query = request.GET
    return HttpResponse(query)



def alter(request):
    pass



def delete(request):
    pass