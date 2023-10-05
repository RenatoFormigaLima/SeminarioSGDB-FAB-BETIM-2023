from django.db import models

# Create your models here.

class Professor(models.Model):
    id= models.IntegerField(primary_key=True)
    nome= models.CharField(max_length=50)
    
class Disciplina(models.Model):
    id=models.IntegerField(primary_key=True)
    descricao= models.CharField(max_length=50)
    professor= models.ForeignKey(Professor,on_delete=models.CASCADE)

class Aluno(models.Model):
    id= models.IntegerField(primary_key=True)
    nome= models.CharField(max_length=50)
    disciplina= models.ForeignKey(Disciplina,on_delete=models.CASCADE)

class user(models.Model):
    id= models.IntegerField(primary_key=True)
    username = models.CharField(max_length=100)

class dataTable(models.Model):
    id= models.IntegerField(primary_key=True)
    aluno = models.CharField(max_length=100)
    professor = models.CharField(max_length=100)
    materia = models.CharField(max_length=100)