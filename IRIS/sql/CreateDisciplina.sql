CREATE TABLE Portal.Disciplina(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    idProfessor INT
    FOREIGN KEY (idProfessor) REFERENCES (Portal.Professor.id)
)