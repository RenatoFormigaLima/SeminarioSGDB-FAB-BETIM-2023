/// Essa é a documentação da API do portal da Faculdade<br/>
/// Business logic class defined by OpenAPI in Faculdade.spec<br/>
/// Created Oct 2, 2023 17:23:11
Class Faculdade.impl Extends %REST.Impl [ ProcedureBlock ]
{

/// If ExposeServerExceptions is true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 0;

/// Adiciona um novo aluno<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser adicionado no portal<br/>
ClassMethod addAluno(body As %DynamicObject) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Dá um update em aluno<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser atualizado no portal<br/>
ClassMethod UpdateAluno(body As %DynamicObject) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega o aluno pelo id<br/>
/// The method arguments hold values for:<br/>
///     idAluno, O id precisa ser especificado<br/>
ClassMethod findAlunoById(idAluno As %Integer) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega o aluno pelo nome<br/>
/// The method arguments hold values for:<br/>
///     NomeAluno, O nome precisa ser especificado<br/>
ClassMethod findAlunoByName(NomeAluno As %String) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Adiciona um novo aluno<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser adicionado no portal<br/>
ClassMethod addProfessor(body As %DynamicObject) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Dá um update em profesor<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser atualizado no portal<br/>
ClassMethod UpdateProfessor(body As %DynamicObject) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega o professor pelo nome<br/>
/// The method arguments hold values for:<br/>
///     NomeProfessor, O nome precisa ser especificado<br/>
ClassMethod findAProfessorByName(NomeProfessor As %String) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega o professor pelo id<br/>
/// The method arguments hold values for:<br/>
///     idProfessor, O nome precisa ser especificado<br/>
ClassMethod findAProfessorById(idProfessor As %Integer) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Adiciona um novo aluno<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser adicionado no portal<br/>
ClassMethod addDisciplina(body As %DynamicObject) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Dá um update em aluno<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser atualizado no portal<br/>
ClassMethod UpdateDisciplina(body As %DynamicObject) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega a disciplina pelo id<br/>
/// The method arguments hold values for:<br/>
///     idDisciplina, O nome precisa ser especificado<br/>
ClassMethod findDisciplinaById(idDisciplina As %Integer) As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega todas as disciplinas
ClassMethod findAllDisciplinas() As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response  may be a string, stream or dynamic object
}

/// Pega todos os alunos
ClassMethod findAllAlunos() As %DynamicObject
{
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

/// Pega todos os professores
ClassMethod findAllProfessores() As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.Classprofessor","professores")
    set resp = ##class(%DynamicObject).%New()

    set result = statement.%Execute()
    if result.%SQLCode >= 0{
        while result.%Next(){
            set resp = resp + result
        }
    }
    do ..%SetStatusCode("200")
    do ..%SetHeader("Content-Type", "application/json")
    Quit resp.%ToJSON()
    //(Place business logic here)
    //Do ..%SetStatusCode(<HTTP_status_code>)
    //Do ..%SetHeader(<name>,<value>)
    //Quit (Place response here) ; response may be a string, stream or dynamic object
}

}
