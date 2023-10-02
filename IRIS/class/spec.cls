Class Faculdade.spec Extends %REST.Spec [ ProcedureBlock ]
{

XData OpenAPI [ MimeType = application/json ]
{
{
  "swagger":"2.0",
  "info":{
    "description":"Essa é a documentação da API do portal da Faculdade",
    "version":"1.0.0",
    "title":"Swagger Portal 2.0",
    "termsOfService":"http://swagger.io/terms/",
    "contact":{
      "email":"apiteam@swagger.io"
    },
    "license":{
      "name":"Apache 2.0",
      "url":"http://www.apache.org/licenses/LICENSE-2.0.html"
    }
  },
  "basePath":"/api/mgmnt/v2/USER/Faculdade",
  "tags":[
    {
      "name":"aluno",
      "description":"Todas as operações de aluno"
    },
    {
      "name":"professor",
      "description":"Todas as operações de professor"
    },
    {
      "name":"disciplina",
      "description":"Todas as operações de disciplina"
    }
  ],
  "schemes":[
    "http"
  ],
  "paths":{
    "/aluno":{
      "post":{
        "tags":[
          "aluno"
        ],
        "summary":"Adiciona um novo aluno",
        "description":"",
        "operationId":"addAluno",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"body",
            "description":"Objeto aluno precisa ser adicionado no portal",
            "required":true,
            "schema":{
              "$ref":"#/definitions/Aluno"
            }
          }
        ],
        "responses":{
          "405":{
            "description":"Invalid input"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      },
      "put":{
        "tags":[
          "aluno"
        ],
        "summary":"Dá um update em aluno",
        "description":"",
        "operationId":"UpdateAluno",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"body",
            "description":"Objeto aluno precisa ser atualizado no portal",
            "required":true,
            "schema":{
              "$ref":"#/definitions/Aluno"
            }
          }
        ],
        "responses":{
          "400":{
            "description":"Invalid ID supplied"
          },
          "404":{
            "description":"Pet not found"
          },
          "405":{
            "description":"Validation exeption"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      }
    },
    "/aluno/id/{idAluno}":{
      "get":{
        "tags":[
          "aluno"
        ],
        "summary":"Pega o aluno pelo id",
        "description":"",
        "operationId":"findAlunoById",
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "name":"idAluno",
            "in":"path",
            "description":"O id precisa ser especificado",
            "required":true,
            "type":"integer"
          }
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Aluno"
            }
          },
          "400":{
            "description":"Dado inválido"
          },
          "404":{
            "description":"Aluno não encontrado"
          }
        }
      }
    },
    "/aluno/name/{NomeAluno}":{
      "get":{
        "tags":[
          "aluno"
        ],
        "summary":"Pega o aluno pelo nome",
        "description":"",
        "operationId":"findAlunoByName",
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "name":"NomeAluno",
            "in":"path",
            "description":"O nome precisa ser especificado",
            "required":true,
            "type":"string"
          }
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Aluno"
            }
          },
          "400":{
            "description":"Dado inválido"
          },
          "404":{
            "description":"Aluno não encontrado"
          }
        }
      }
    },
    "/professor":{
      "post":{
        "tags":[
          "professor"
        ],
        "summary":"Adiciona um novo aluno",
        "description":"",
        "operationId":"addProfessor",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"body",
            "description":"Objeto aluno precisa ser adicionado no portal",
            "required":true,
            "schema":{
              "$ref":"#/definitions/Professor"
            }
          }
        ],
        "responses":{
          "405":{
            "description":"Invalid input"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      },
      "put":{
        "tags":[
          "professor"
        ],
        "summary":"Dá um update em profesor",
        "description":"",
        "operationId":"UpdateProfessor",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"body",
            "description":"Objeto aluno precisa ser atualizado no portal",
            "required":true,
            "schema":{
              "$ref":"#/definitions/Professor"
            }
          }
        ],
        "responses":{
          "400":{
            "description":"Invalid ID supplied"
          },
          "404":{
            "description":"Pet not found"
          },
          "405":{
            "description":"Validation exeption"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      }
    },
    "/professor/name/{NomeProfessor}":{
      "get":{
        "tags":[
          "professor"
        ],
        "summary":"Pega o professor pelo nome",
        "description":"",
        "operationId":"findAProfessorByName",
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "name":"NomeProfessor",
            "in":"path",
            "description":"O nome precisa ser especificado",
            "required":true,
            "type":"string"
          }
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Professor"
            }
          },
          "400":{
            "description":"Dado inválido"
          },
          "404":{
            "description":"Professor não encontrado"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      }
    },
    "/professor/id/{idProfessor}":{
      "get":{
        "tags":[
          "professor"
        ],
        "summary":"Pega o professor pelo id",
        "description":"",
        "operationId":"findAProfessorById",
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "name":"idProfessor",
            "in":"path",
            "description":"O nome precisa ser especificado",
            "required":true,
            "type":"integer"
          }
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Professor"
            }
          },
          "400":{
            "description":"Dado inválido"
          },
          "404":{
            "description":"Professor não encontrado"
          }
        }
      }
    },
    "/disciplina":{
      "post":{
        "tags":[
          "disciplina"
        ],
        "summary":"Adiciona um novo aluno",
        "description":"",
        "operationId":"addDisciplina",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"body",
            "description":"Objeto aluno precisa ser adicionado no portal",
            "required":true,
            "schema":{
              "$ref":"#/definitions/Disciplina"
            }
          }
        ],
        "responses":{
          "405":{
            "description":"Invalid input"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      },
      "put":{
        "tags":[
          "disciplina"
        ],
        "summary":"Dá um update em aluno",
        "description":"",
        "operationId":"UpdateDisciplina",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"body",
            "description":"Objeto aluno precisa ser atualizado no portal",
            "required":true,
            "schema":{
              "$ref":"#/definitions/Disciplina"
            }
          }
        ],
        "responses":{
          "400":{
            "description":"Invalid ID supplied"
          },
          "404":{
            "description":"Pet not found"
          },
          "405":{
            "description":"Validation exeption"
          }
        },
        "security":[
          {
            "api_key":[
            ]
          }
        ]
      }
    },
    "/disciplina/{idDisciplina}":{
      "get":{
        "tags":[
          "disciplina"
        ],
        "summary":"Pega a disciplina pelo id",
        "description":"",
        "operationId":"findDisciplinaById",
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "name":"idDisciplina",
            "in":"path",
            "description":"O nome precisa ser especificado",
            "required":true,
            "type":"integer"
          }
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Disciplina"
            }
          },
          "400":{
            "description":"Dado inválido"
          },
          "404":{
            "description":"Disciplina não encontrado"
          }
        }
      }
    },
    "/disciplina/allDisciplinas":{
      "get":{
        "tags":[
          "disciplina"
        ],
        "summary":"Pega todas as disciplinas",
        "description":"",
        "operationId":"findAllDisciplinas",
        "produces":[
          "application/json"
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Disciplina"
            }
          },
          "404":{
            "description":"Dados não encontrados"
          }
        }
      }
    },
    "/aluno/allAlunos":{
      "get":{
        "tags":[
          "aluno"
        ],
        "summary":"Pega todos os alunos",
        "description":"",
        "operationId":"findAllAlunos",
        "produces":[
          "application/json"
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Aluno"
            }
          },
          "404":{
            "description":"Dados não encontrados"
          }
        }
      }
    },
    "/professor/allProfessores":{
      "get":{
        "tags":[
          "professor"
        ],
        "summary":"Pega todos os professores",
        "description":"",
        "operationId":"findAllProfessores",
        "produces":[
          "application/json"
        ],
        "responses":{
          "200":{
            "description":"Sucesso",
            "schema":{
              "$ref":"#/definitions/Professor"
            }
          },
          "404":{
            "description":"Dados não encontrados"
          }
        }
      }
    }
  },
  "securityDefinitions":{
    "api_key":{
      "type":"apiKey",
      "name":"api_key",
      "in":"header"
    }
  },
  "definitions":{
    "Professor":{
      "type":"object",
      "required":[
        "name"
      ],
      "properties":{
        "id":{
          "type":"integer"
        },
        "name":{
          "type":"string",
          "example":"professor123"
        }
      }
    },
    "Aluno":{
      "type":"object",
      "required":[
        "name"
      ],
      "properties":{
        "id":{
          "type":"integer"
        },
        "name":{
          "type":"string",
          "example":"aluno123"
        },
        "disciplinas":{
          "$ref":"#/definitions/Disciplina"
        }
      }
    },
    "Disciplina":{
      "type":"object",
      "required":[
        "name"
      ],
      "properties":{
        "id":{
          "type":"integer"
        },
        "name":{
          "type":"string",
          "example":"aluno123"
        },
        "professor":{
          "$ref":"#/definitions/Professor"
        }
      }
    }
  }
}
}

}
