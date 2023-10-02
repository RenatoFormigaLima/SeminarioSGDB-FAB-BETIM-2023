from django.shortcuts import render, HttpResponse
import json

def login(request):
    return render(request,'login.html')



def home(request):
    return HttpResponse("Hello World!")




def create(request):
    req= json.loads(request.body)


def list(request):
    pass



def search(request):
    pass



def alter(request):
    pass



def delete(request):
    pass