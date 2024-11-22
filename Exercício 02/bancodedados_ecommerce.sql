CREATE DATABASE ecommerce;
USE ecommerce;

	CREATE TABLE produtos(
		id BIGINT AUTO_INCREMENT,
        produto VARCHAR (255),
        marca VARCHAR (255),
        preco DECIMAL (6,2),
        quantidade INT,
        PRIMARY KEY (id)
        );
        
        INSERT INTO produtos (produto, marca, preco, quantidade)
			VALUES ("Celular", "Samsung", 6200, 100),
			("Celular", "Apple", 8000, 200),
            ("Tablet", "Samsung", 2100, 90),
            ("Headset", "Beats", 600, 45),
            ("Fone Bluetooth", "Xiaomi", 150, 300),
            ("Monitor", "Dell", 430, 60),
            ("Mouse", "Exbom", 35, 150),
            ("Teclado", "Exbom", 45, 150);
            
		SELECT * FROM produtos WHERE preco > 500;
        SELECT * FROM produtos WHERE preco < 500;
        
        UPDATE produtos SET preco = 455 WHERE id = 4;