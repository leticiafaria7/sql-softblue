USE curso_sql;

SELECT * FROM funcionarios;

SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE salario > 2000;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1600 AND departamento = 'Jurídico';

SELECT SUM(salario) FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE departamento = 'TI';

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'TI';

SELECT MAX(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios WHERE departamento = 'TI';

SELECT DISTINCT(departamento) FROM funcionarios;

SELECT * FROM funcionarios ORDER BY nome DESC;
SELECT * FROM funcionarios ORDER BY salario;
SELECT * FROM funcionarios ORDER BY departamento, salario DESC;

SELECT * FROM funcionarios LIMIT 2 OFFSET 1;

SELECT AVG(salario) FROM funcionarios WHERE departamento = 'TI';
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'Jurídico';

SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento;
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000;

SELECT departamento, COUNT(*) FROM funcionarios GROUP BY departamento;

SELECT NOME FROM funcionarios 
WHERE departamento IN 
	(
		SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000
	);



