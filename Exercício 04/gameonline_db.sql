CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
	Poder VARCHAR(255),
    Posicao VARCHAR(255),
    PRIMARY KEY (id)
    );
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255),
    Dano INT,
    Vida INT,
    Evolucao INT,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_classes (poder, posicao)
    VALUES ("Atirador", "Atrás"),
    ("Arqueiro", "Atrás"),
    ("Lutador", "Frente"),
    ("Magia", "Atrás"),
    ("Espadachim", "Frente");
    
    INSERT INTO tb_personagens (Nome, Dano, Vida, Evolucao)
    VALUES ("Coraline", 15000, 25000, 1),
    ("Oger", 30000, 45000, 1),
    ("Lucy", 22000, 40000, 1),
    ("Mina", 21000, 30000, 1),
    ("Leo", 28000, 38000, 1);
    
    SELECT * FROM tb_classes;
    SELECT * FROM tb_personagens;
    
    ALTER TABLE tb_personagens ADD categoriaid BIGINT;
    
	ALTER TABLE tb_personagens ADD CONSTRAINT fk_classes 
	FOREIGN KEY (categoriaid) REFERENCES tb_classes (id);
    
    SELECT * FROM tb_personagens;
    
    UPDATE tb_personagens SET categoriaid = 3 WHERE id = 1;
    UPDATE tb_personagens SET categoriaid = 1 WHERE id = 2;
    UPDATE tb_personagens SET categoriaid = 5 WHERE id = 3;
    UPDATE tb_personagens SET categoriaid = 2 WHERE id = 4;
    UPDATE tb_personagens SET categoriaid = 4 WHERE id = 5;
    
    SELECT * FROM tb_personagens;
    
    SELECT * FROM tb_personagens WHERE dano > 2000;
    SELECT * FROM tb_personagens WHERE dano BETWEEN 1000 AND 2000;
    SELECT * FROM tb_personagens WHERE Nome LIKE "%c%";
    
	SELECT poder, posicao
	FROM tb_classes INNER JOIN tb_personagens 
	ON tb_personagens.categoriaid = tb_personagens.id;