Class Faculdade.ClassDisciplina Extends %Persistent
{

Property id As %Integer;

Property Professor As Classprofessor;

/// Description
Query QueryByProfessor(profName As %String) As %SQLQuery [ SqlProc ]
{
        SELECT id, Professor.name
        FROM ClassDisciplina
        WHERE name = profName
}

Storage Default
{
<Data name="ClassDisciplinaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>Professor</Value>
</Value>
</Data>
<DataLocation>^Faculdade.ClassDisciplinaD</DataLocation>
<DefaultData>ClassDisciplinaDefaultData</DefaultData>
<IdLocation>^Faculdade.ClassDisciplinaD</IdLocation>
<IndexLocation>^Faculdade.ClassDisciplinaI</IndexLocation>
<StreamLocation>^Faculdade.ClassDisciplinaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
