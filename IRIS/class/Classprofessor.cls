Class Faculdade.Classprofessor Extends %Persistent
{

/// Description
Property Name As %String [ Required ];

Query professores() As %SQLQuery [ SqlProc ]
{
    SELECT * FROM Faculdade.Classprofessor
}

Query QueryProfessorById(pId As %Integer) As %SQLQuery [ SqlProc ]
{
    SELECT * FROM Faculdade.Classprofessor WHERE Classprofessor.ID = :pId
}

Query QueryProfessorByName(pName As %String) As %SQLQuery [ SqlProc ]
{
    SELECT * FROM Faculdade.Classprofessor WHERE Classprofessor.Name = :pName
}

Storage Default
{
<Data name="ClassprofessorDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^Faculdade.ClassprofessorD</DataLocation>
<DefaultData>ClassprofessorDefaultData</DefaultData>
<IdLocation>^Faculdade.ClassprofessorD</IdLocation>
<IndexLocation>^Faculdade.ClassprofessorI</IndexLocation>
<StreamLocation>^Faculdade.ClassprofessorS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
