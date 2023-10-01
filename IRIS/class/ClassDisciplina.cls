Class Faculdade.ClassDisciplina Extends %Persistent
{

Property name As %String;

Property Professor As Classprofessor;

// without join -> bad way

Query QueryByProfessor(profName As %String) As %SQLQuery [ SqlProc ]
{
    SELECT ClassDisciplina.ID,ClassDisciplina.name, Classprofessor.Name
    FROM Faculdade.ClassDisciplina, Faculdade.Classprofessor
    WHERE Classprofessor.Name = :profName
}

Query QueryByProfessorID(profID As %Integer) As %SQLQuery [ SqlProc ]
{
    SELECT ClassDisciplina.ID,ClassDisciplina.name, Classprofessor.Name
    FROM Faculdade.ClassDisciplina, Faculdade.Classprofessor
    WHERE Classprofessor.ID = :profID
}

Query Disciplinas() As %SQLQuery [ SqlView ]
{
    SELECT *
    FROM Faculdade.ClassDisciplina
}

/// Description
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
<Value name="4">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^Faculdade.ClassDisciplinaD</DataLocation>
<DefaultData>ClassDisciplinaDefaultData</DefaultData>
<Description>
<![CDATA[Description]]></Description>
<IdLocation>^Faculdade.ClassDisciplinaD</IdLocation>
<IndexLocation>^Faculdade.ClassDisciplinaI</IndexLocation>
<StreamLocation>^Faculdade.ClassDisciplinaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
