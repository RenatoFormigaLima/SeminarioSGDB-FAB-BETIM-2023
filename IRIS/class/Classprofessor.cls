Class Faculdade.Classprofessor Extends %Persistent
{

/// Description
Property Name As %String [ Required ];

Query professores() As %SQLQuery [ SqlView ]
{
    SELECT * FROM Faculdade.Classprofessor
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
