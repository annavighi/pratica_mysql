CREATE DATABASE rh_db;
USE rh_db;

	CREATE TABLE colaboradores(
		id BIGINT AUTO_INCREMENT,
		nome VARCHAR (255),
		admissao DATE,
		cargo VARCHAR (255),
		carga_horaria INT,
		salario DECIMAL (6,2),
		PRIMARY KEY(id)
    );
    
    INSERT INTO colaboradores (nome, admissao, cargo, carga_horaria, salario)
		VALUES ("Anna Summa", "2025-01-15", "Dev Java Junior", 36, 3000),
        ("Boris de Freitas", "2025-01-15", "Dev Java Junior", 36, 3000),
		("Marco Summa", "2024-03-09", "Advogado", 40, 8000),
		("Tomás Vighi", "2023-07-12", "Empreiteiro", 40, 8000),
		("Clarice Vighi", "2024-11-15", "Front-end", 36, 2200),
		("Anna Summa", "2025-01-15", "Front-end" , 36, 3300),
		("Nilza Marly", "2025-01-15", "Back-end", 36, 1500),
		("Edison Marcos", "2025-01-15", "Dev Java Junior", 36, 1800),
		("Matteo Vighi", "2025-01-15", "Back-end", 36, 2000),
		("Manuela Vighi", "2025-01-15", "Dados", 36, 1900),
		("Maria Alice França", "2025-01-15", "Back-end", 36, 4200),
		("Caetano França", "2025-01-15", "Dados Junior", 36, 2100);
        
        SELECT * FROM colaboradores WHERE salario > 2000;
        SELECT * FROM colaboradores WHERE salario < 2000;
        
        UPDATE colaboradores SET cargo = "Back-end" WHERE id = 1;