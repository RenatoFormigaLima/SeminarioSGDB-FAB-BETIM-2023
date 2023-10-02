from django.db import models

# Create your models here.

class Professor(models.Model):
    id= models.IntegerField(primary_key=True)
    nome= models.CharField(max_length=50)
    
class Disciplina(models.Model):
    id=models.IntegerField(primary_key=True)
    descricao= models.CharField(max_length=50)
    id_professor= models.ForeignKey(Professor,on_delete=models.CASCADE)

class Aluno(models.Model):
    id= models.IntegerField(primary_key=True)
    nome= models.CharField(max_length=50)
    id_dsciplina= models.ForeignKey(Disciplina,on_delete=models.CASCADE)
