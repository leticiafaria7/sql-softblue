
-- criar usuário
CREATE USER 'leticia'@'localhost' IDENTIFIED BY 'faria123456';
/* CREATE USER 'leticia'@'%' IDENTIFIED BY 'faria123456'; -- qualquer endereço de ip */

-- dar acesso ao usuário criado
GRANT ALL ON curso_sql.* TO 'leticia'@'localhost';
/* GRANT SELECT ON curso_sql TO 'leticia'@'%' */

-- revogar acesso
REVOKE INSERT ON curso_sql.funcionarios FROM 'leticia'@'%';

-- excluir usuário
DROP USER 'leticia'@'%';

-- mostrar usuários
SELECT User FROM mysql.user;
SHOW GRANTS FOR 'leticia'@'localhost';




