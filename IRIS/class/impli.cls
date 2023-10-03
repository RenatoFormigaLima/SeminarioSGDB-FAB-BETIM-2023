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
    set auxD = body.%Get("Disciplina")
    set auxA = body.%Get("name")

    set buscaDisciplina = ##Class(ClassDisciplina).%OpenId(auxD)
    set novoAluno = ##Class(ClassAluno).%New()
    set novoAluno.name = auxA
    set novoAluno.Disciplina = buscaDisciplina
    do novoAluno.%Save()

    do ..%SetHeader("Content-Type", "application/json")
    do ..%SetStatusCode("200")
    Quit {"Message": "Sucesso"}
}

/// Dá um update em aluno<br/>
/// The method arguments hold values for:<br/>
///     body, Objeto aluno precisa ser atualizado no portal<br/>
ClassMethod UpdateAluno(body As %DynamicObject) As %DynamicObject
{
    
    set idAluno = body.%Get("ID")
    set novoAlunoNome = body.%Get("name")
    set novoAlunoDisciplina = body.%Get("Disciplina")

    set buscaAluno = ##Class(ClassAluno).%OpenId(idAluno)
    set buscaDisciplina = ##Class(ClassDisciplina).%OpenId(novoAlunoDisciplina)

    set buscaAluno.name = novoAlunoNome
    set buscaAluno.Disciplina = buscaDisciplina
    do buscaAluno.%Save()

    do ..%SetHeader("Content-Type", "application/json")
    do ..%SetStatusCode("200")
    Quit {"Message": "Sucesso"}
}

/// Pega o aluno pelo id<br/>
/// The method arguments hold values for:<br/>
///     idAluno, O id precisa ser especificado<br/>
ClassMethod findAlunoById(idAluno As %Integer) As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.ClassAluno","QueryDisciplinaById")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute(idAluno)
    if result.%SQLCode >= 0{
        set i = 0
        while result.%Next(){
            do resp.%Set("aluno"_"_"_i, result.%Get("aluno"))
            do resp.%Set("materia"_"_"_i, result.%Get("materia"))
            set i = i + 1
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
}

/// Pega o aluno pelo nome<br/>
/// The method arguments hold values for:<br/>
///     NomeAluno, O nome precisa ser especificado<br/>
ClassMethod findAlunoByName(NomeAluno As %String) As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.ClassAluno","QueryDisciplinaByAluno")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute(NomeAluno)
    if result.%SQLCode >= 0{
        set i = 0
        while result.%Next(){
            do resp.%Set("aluno"_"_"_i, result.%Get("aluno"))
            do resp.%Set("materia"_"_"_i, result.%Get("materia"))
            set i = i + 1
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
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
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.Classprofessor","QueryProfessorByName")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute(NomeProfessor)
    if result.%SQLCode >= 0{
        while result.%Next(){
            do resp.%Set("ID", result.%Get("ID"))
            do resp.%Set("name", result.%Get("Name"))
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
}

/// Pega o professor pelo id<br/>
/// The method arguments hold values for:<br/>
///     idProfessor, O nome precisa ser especificado<br/>
ClassMethod findAProfessorById(idProfessor As %Integer) As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.Classprofessor","QueryProfessorById")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute(idProfessor)
    if result.%SQLCode >= 0{
        while result.%Next(){
            do resp.%Set("name", result.%Get("Name"))
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
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
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.ClassDisciplina","QueryByID")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute(idDisciplina)
    if result.%SQLCode >= 0{
        while result.%Next(){
            do resp.%Set("disciplina", result.%Get("disciplina"))
            do resp.%Set("professor", result.%Get("professor"))
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
}

/// Pega todas as disciplinas
ClassMethod findAllDisciplinas() As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.ClassDisciplina","AllDisciplinas")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute()
    if result.%SQLCode >= 0{
        while result.%Next(){
            do resp.%Set("disciplina"_result.%Get("id"), result.%Get("disciplina"))
            do resp.%Set("professor"_result.%Get("id"), result.%Get("professor"))
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
}

/// Pega todos os alunos
ClassMethod findAllAlunos() As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.ClassAluno","ViewAllDisciplina")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute()
    if result.%SQLCode >= 0{
        while result.%Next(){
            do resp.%Set("aluno"_result.%Get("ID"), result.%Get("aluno"))
            do resp.%Set("materia"_result.%Get("ID"), result.%Get("materia"))
            do resp.%Set("professor"_result.%Get("ID"), result.%Get("professor"))
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
}

/// Pega todos os professores
ClassMethod findAllProfessores() As %DynamicObject
{
    do ..%SetHeader("Content-Type", "application/json")

    set statement = ##class(%SQL.Statement).%New()
    set status = statement.%PrepareClassQuery("Faculdade.Classprofessor","professores")
    set resp = ##class(%DynamicObject).%New()
    if $$$ISERR(status)
    {
        do ..%SetHeader("Content-Type", "application/json")
        do ..%SetStatusCode("500")
        Quit resp
    }
    set result = statement.%Execute()
    if result.%SQLCode >= 0{
        while result.%Next(){
            do resp.%Set("ID"_result.%Get("ID"), result.%Get("ID"))
            do resp.%Set("Name"_result.%Get("ID"), result.%Get("Name"))
        }
    }
    do ..%SetStatusCode("200")
    Quit resp
}

}
