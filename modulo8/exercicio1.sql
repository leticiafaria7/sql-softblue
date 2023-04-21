USE cursos_softblue;

CREATE TABLE conta_bancaria
(
	codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT, -- Código interno (PK)
	titular VARCHAR(32) NOT NULL, -- Nome do titular da conta
	saldo DOUBLE NOT NULL, -- Representa o saldo da conta
	PRIMARY KEY(codigo) -- Define o campo CODIGO como PK (Primary Key)
);

INSERT INTO conta_bancaria VALUES (1, 'André', 213);
INSERT INTO conta_bancaria VALUES (2, 'Diogo', 489);
INSERT INTO conta_bancaria VALUES (3, 'Rafael', 568);
INSERT INTO conta_bancaria VALUES (4, 'Carlos', 712);
INSERT INTO conta_bancaria VALUES (5, 'Peter', -38);

SELECT * FROM conta_bancaria;

-- construa uma transação que atualiza o valor aplicado 
-- em cada conta bancária baseado no índice de correção percentual de 3% 

start transaction;
SET SQL_SAFE_UPDATES = 0;
UPDATE conta_bancaria SET saldo = saldo * 1.3 WHERE saldo > 0;
commit;
