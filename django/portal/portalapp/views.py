from django.shortcuts import render, HttpResponse
import json
import models
def login(request):
    return render(request,'login.html')



def home(request):
    return HttpResponse("Hello World!")




def create(request):
    req= json.loads(request.body)
    aluno =models.Aluno(nome=req['nome'],id_disciplina=req["id_disciplina"])
    aluno.save()
    return HttpResponse("aluno salvo")
    


def list(request):
    query = models.Aluno.objects.all()
    return HttpResponse(query)



def search(request):
    pass



def alter(request):
    pass



def delete(request):
    pass