Class Faculdade.ClassAluno Extends %Persistent
{

Property Disciplina As ClassDisciplina;

Property name As %String;

// Query QueryByDisciplinaName(pDiciplina As %String) As %SQLQuery [ SqlProc ]

// {

//         SELECT Disciplina.name, Disciplina.Professor.name

//         FROM Faculdade.ClassAluno

//         WHERE Disciplina.name = pDiciplina

// }

// Query QueryByDisciplinaId(pDiciplina As %Integer) As %SQLQuery [ SqlProc ]

// {

//         SELECT Disciplina.id, Disciplina.name, Disciplina.Professor.name, name

//         FROM Disciplina

//         WHERE Disciplina.id = pDiciplina

// }

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
