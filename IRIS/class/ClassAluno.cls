Class Faculdade.ClassAluno Extends %Persistent
{

Property id As %Integer;

Property Diciplina As ClassDisciplina;

Property name As %String;

Query QueryByDisciplinaName(pDiciplina As %String) As %SQLQuery [ SqlProc ]
{
        SELECT Diciplina.name, Diciplina.Professor.name, name
        FROM Diciplina
        WHERE Diciplina.name = pDiciplina
}

Query QueryByDisciplinaId(pDiciplina As %Integer) As %SQLQuery [ SqlProc ]
{
        SELECT Diciplina.id, Diciplina.name, Diciplina.Professor.name, name
        FROM Diciplina
        WHERE Diciplina.id = pDiciplina
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
<Value>Diciplina</Value>
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
