show databases;
USE bibliotecas;
SELECT * FROM aluno;
INSERT INTO LIVRO VALUES ('AGENTE GALASSO','9789895281619','A. F. Pinheiro');

SELECT titulo, autor FROM livro WHERE isbn = '2468517932451';

SELECT matricula FROM aluno;

INSERT INTO ALUNO(nome, matricula, endereco, email) VALUES ('PEDRO','872635', 'AV.CASTRO MELO, 115', 'PEDROB@ALU.UFC');

SELECT livro.isbn, sessao.localizacao FROM livro, sessao;

SELECT dt_emprestimo FROM emprestimo;

SELECT DISTINCT dt_emprestimo FROM emprestimo;

SET SQL_SAFE_UPDATES=0;
DELETE FROM aluno WHERE nome = 'PEDRO';
SET SQL_SAFE_UPDATES=1;

SET SQL_SAFE_UPDATES=0;
DELETE FROM livro WHERE isbn = '9789895281619';
SET SQL_SAFE_UPDATES=1;

-- DESATIVA O MODO DE ATUALIZAÇÃO SEGURA --
SET SQL_SAFE_UPDATES = 0;
UPDATE aluno SET nome = 'LUCAS CASTRO', matricula = '253829' WHERE email = 'LUCAS23@ALU.UFC';
SET SQL_SAFE_UPDATES=1;








