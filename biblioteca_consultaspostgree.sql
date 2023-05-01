SELECT datname
FROM pg_database
WHERE datname = 'biblioteca';
select * from livro;
SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
AND table_schema = 'public';

INSERT INTO LIVRO
VALUES ('AGENTE GALASSO','9789895281619',' A. F. Pinheiro ');

SELECT titulo, autor
FROM livro
WHERE isbn = '2468517932451';

SELECT matricula
from aluno;

INSERT INTO ALUNO(nome, matricula, endereco, email)
VALUES ('PEDRO','872635', 'AV.CASTRO MELO, 115', 'PEDROB@ALU.UFC');

SELECT isbn, localizacao
from livro, sessao;

SELECT ALL dt_emprestimo
FROM emprestimo;

SELECT DISTINCT dt_emprestimo
FROM emprestimo;

DELETE FROM aluno
WHERE nome= 'PEDRO';

DELETE FROM livro
WHERE isbn = '9789895281619';

UPDATE aluno
SET nome = 'LUCAS CASTRO', matricula = '253829'
WHERE email = 'LUCAS23@ALU.UFC';










