Class Faculdade.ClassDisciplina Extends %Persistent
{

Property name As %String;

Property Professor As Classprofessor;

// Query QueryByProfessor(profName As %String) As %SQLQuery [ SqlProc ]

// {

//         SELECT Professor.Name, name

//         FROM ClassDisciplina

//         WHERE Professor.Name = :profName

// }

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
