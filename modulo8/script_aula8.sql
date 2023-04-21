USE curso_sql;

SHOW ENGINES;

CREATE TABLE contas_bancarias
(
	id int unsigned not null auto_increment,
    titular varchar(45) not null,
    saldo double not null,
    PRIMARY KEY (id)
) engine = InnoDB;


INSERT INTO contas_bancarias (titular, saldo) VALUES ('André', 1000);
INSERT INTO contas_bancarias (titular, saldo) VALUES ('Carlos', 2000);

SELECT * FROM contas_bancarias;

-- transações

start transaction;
UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id = 3;
rollback; -- cancela a transação

start transaction;
UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id = 3;
commit;





