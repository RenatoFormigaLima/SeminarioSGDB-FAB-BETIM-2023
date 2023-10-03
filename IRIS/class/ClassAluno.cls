Class Faculdade.ClassAluno Extends %Persistent
{

Property Disciplina As ClassDisciplina;

Property name As %String [ Required ];

Query QueryByDisciplinaName(pDiciplina As %String) As %SQLQuery [ SqlProc ]
{
    SELECT ClassAluno.name As aluno, ClassDisciplina.name As materia
    FROM Faculdade.ClassAluno, Faculdade.ClassDisciplina
    WHERE ClassDisciplina.name = :pDiciplina
}

Query ViewDisciplina() As %SQLQuery [ SqlView ]
{
    SELECT ClassAluno.name As aluno, ClassDisciplina.name As materia
    FROM Faculdade.ClassAluno, Faculdade.ClassDisciplina
    WHERE ClassDisciplina.ID = ClassAluno.Disciplina
}

Query ViewAllDisciplina() As %SQLQuery [ SqlProc ]
{
    SELECT ClassAluno.ID As ID, ClassAluno.name As aluno, ClassDisciplina.name As materia, Classprofessor.Name As professor
    from Faculdade.ClassAluno, Faculdade.ClassDisciplina, Faculdade.Classprofessor
    WHERE ClassAluno.Disciplina = ClassDisciplina.ID
}

Query QueryDisciplinaByAluno(pNome As %String) As %SQLQuery [ SqlProc ]
{
    SELECT ClassAluno.ID As id, ClassAluno.name As aluno, ClassDisciplina.name As materia
    FROM Faculdade.ClassAluno, Faculdade.ClassDisciplina
    WHERE ClassAluno.name = :pNome
}

Query QueryDisciplinaById(pId As %Integer) As %SQLQuery [ SqlProc ]
{
    SELECT ClassAluno.ID As id, ClassAluno.name As aluno, ClassDisciplina.name As materia
    FROM Faculdade.ClassAluno, Faculdade.ClassDisciplina
    WHERE ClassAluno.ID = :pId
}

Storage Default
{
<Data name="ClassAlunoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>Disciplina</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^Faculdade.ClassAlunoD</DataLocation>
<DefaultData>ClassAlunoDefaultData</DefaultData>
<IdLocation>^Faculdade.ClassAlunoD</IdLocation>
<IndexLocation>^Faculdade.ClassAlunoI</IndexLocation>
<StreamLocation>^Faculdade.ClassAlunoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
