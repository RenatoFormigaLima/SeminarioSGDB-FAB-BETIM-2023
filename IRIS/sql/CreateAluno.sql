CREATE TABLE Portal.Aluno(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    idDisciplina INT
    FOREIGN KEY (idDisciplina) REFERENCES (Portal.Disciplina.id)
)