CREATE DATABASE escola_db;
USE escola_db;

	CREATE TABLE alunos(
		id BIGINT AUTO_INCREMENT,
        matricula INT,
        nome VARCHAR (255),
        turma VARCHAR (255),
        media_final DECIMAL(2,2),
        PRIMARY KEY (id)
	);
	INSERT INTO alunos (matricula, nome, turma, media_final)
		VALUES (1234, "Anna Summa", "77", 9.5),
		(1235, "José", "78", 5),
		(1236, "Kevin S", "77", 8.5),
		(1237, "Marina", "78", 7.5),
		(1238, "Larissa", "78", 6.5),
		(1239, "Leticia", "78", 7),
		(1240, "Keven M", "77", 10),
		(1241, "Bianca Soarez", "77", 9);
     
	SELECT * FROM alunos WHERE media_final > 7;
    SELECT * FROM alunos WHERE media_final < 7;
	
    UPDATE alunos SET media_final = 4.5 WHERE id = 4;