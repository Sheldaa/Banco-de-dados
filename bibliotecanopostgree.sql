CREATE table biblioteca(
	localizacao VARCHAR(30) NOT NULL,
	instituicao VARCHAR(50)NOT NULL

);
ALTER table biblioteca add primary key (localizacao);

INSERT INTO biblioteca(localizacao,instituicao)
VALUES('ALA-A','UFC-ITAPAJE');
INSERT INTO biblioteca(localizacao,instituicao)
VALUES('ALA-B','UFC-RUSSAS');
INSERT INTO biblioteca(localizacao,instituicao)
VALUES('ALA-C','UFC-CRATEAUS');
INSERT INTO biblioteca(localizacao,instituicao)
VALUES('ALA-D','UFC-SOBRAL');

CREATE table livro(
	titulo VARCHAR(30) NOT NULL,
	isbn VARCHAR(50) NOT NULL,
	autor VARCHAR(30) NOT NULL
);
ALTER table livro add primary key (isbn);

INSERT INTO livro(titulo,isbn, autor)
VALUES('MAR ABERTO','2468517932451','D.W.AUSTIN');
INSERT INTO livro(titulo,isbn, autor)
VALUES('COMBATE A DOR','3596824751645','MARIANA DUTRA');
INSERT INTO livro(titulo,isbn, autor)
VALUES('HÁBITOS','2465987310542','CESAR C. SILVA');
INSERT INTO livro(titulo,isbn, autor)
VALUES('CAMINHO FINITO','102456983246','CARLA PATRICIA');

CREATE table aluno(
	nome VARCHAR(30)NOT NULL,
	matricula INT NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	email varchar(50)NOT NULL
);
ALTER table aluno add primary key (matricula);

INSERT INTO aluno(nome,matricula, endereco, email)
VALUES('JULIA',854620,'AV.JOAQUIM MELO,259', 'JULIAVP@ALU.UFC');
INSERT INTO aluno(nome,matricula, endereco, email)
VALUES('CARLOS',964752 ,'RUA SÃO PEDRO,354', 'CARLIMJ@ALU.UFC');
INSERT INTO aluno(nome,matricula, endereco, email)
VALUES('VITORIA',165982,'RUA MARIA FATIMA,121', 'VIVISOL@ALU.UFC');
INSERT INTO aluno(nome,matricula, endereco, email)
VALUES('LUCAS',346258 ,'AV.PAULO ANDRE,102', 'LUCAS23@ALU.UFC');
CREATE table sessao(
	numeracao INT NOT NULL,
	localizacao VARCHAR(50) NOT NULL,
	descricao VARCHAR(50) NOT NULL
);
ALTER table sessao add primary key (numeracao, localizacao);

INSERT INTO sessao(numeracao,localizacao, descricao)
VALUES( 2 , 'SEGUNDA DIREITA', 'CIENTÍFICOS');
INSERT INTO sessao(numeracao,localizacao, descricao)
VALUES( 6, 'PRIMEIRA ESQUERDA', 'HISTÓRICOS');
INSERT INTO sessao(numeracao,localizacao, descricao)
VALUES( 1, 'TERCEIRA DIREITA', 'FILOSÓFICOS');
INSERT INTO sessao(numeracao,localizacao, descricao)
VALUES(3 , 'SEGUNDA ESQUERDA', 'BIOGRAFIAS');
CREATE table emprestimo(
	dt_emprestimo DATE NOT NULL,
	dt_devolucao DATE NOT NULL
);
ALTER table emprestimo add primary key (dt_emprestimo, dt_devolucao);

INSERT INTO emprestimo(dt_emprestimo, dt_devolucao)
VALUES('2023-01-15', '2023-02-01');
INSERT INTO emprestimo(dt_emprestimo, dt_devolucao)
VALUES('2023-02-22', '2023-03-07');
INSERT INTO emprestimo(dt_emprestimo, dt_devolucao)
VALUES('2023-03-03', '2023-03-18');
INSERT INTO emprestimo(dt_emprestimo, dt_devolucao)
VALUES('2023-03-28', '2023-04-13');