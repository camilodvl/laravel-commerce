INSERT INTO ecommerce.brands (name,created_at,updated_at) VALUES
	 ('Sony',NULL,NULL),
	 ('Apple',NULL,NULL),
	 ('HP',NULL,NULL),
	 ('Adidas',NULL,NULL),
	 ('Nike',NULL,NULL),
	 ('Samsung',NULL,NULL),
	 ('Trek',NULL,NULL);

	
INSERT INTO ecommerce.categories (name,created_at,updated_at) VALUES
	 ('Calzado',NULL,NULL),
	 ('Tecnología',NULL,NULL),
	 ('Cocina',NULL,NULL),
	 ('Celulares',NULL,NULL),
	 ('Construcción',NULL,NULL),
	 ('Belleza',NULL,NULL),
	 ('Deporte',NULL,NULL),
	 ('Accesorios',NULL,NULL);

	
INSERT INTO ecommerce.roles (name,created_at,updated_at) VALUES
	 ('ADMIN',NULL,NULL),
	 ('SELLER',NULL,NULL);
	
	
	INSERT INTO ecommerce.sellers (name,created_at,updated_at) VALUES
	 ('Tienda de bicicletas 4x4','2022-11-14 14:18:42','2022-11-14 14:18:42'),
	 ('Tienda de accesorios para salir','2022-11-14 14:18:55','2022-11-14 14:18:55');

	
INSERT INTO ecommerce.users (name,email,email_verified_at,password,remember_token,role_id,seller_id,created_at,updated_at) VALUES
	 ('Admin','admin@admin.com',NULL,'$2y$10$ocpzmNFoHIwNWvY6H3ecue0QoWOOpNxHXZb3qlG6GM/MFXng7KWAi',NULL,1,NULL,NULL,NULL),
	 ('Camilo','camilo.ramirez@est.iudigital.edu.co',NULL,'$2y$10$p1.0Vj3qLX//EipovWwVrOM74rkpp2.oxKQZd4V3.JU1wMbI9/IyK',NULL,2,1,'2022-11-14 14:19:24','2022-11-14 14:19:24'),
	 ('Julian','julian.ramirez@est.iudigital.edu.co',NULL,'$2y$10$ST68Ppzpd.PS/R0dGon4qeMl7iPkQDw7zDDzh.fK9iVjhjmndwhgK',NULL,2,2,'2022-11-14 14:19:32','2022-11-14 14:19:32');



INSERT INTO ecommerce.products (category_id,brand_id,name,description,image,price,inventory,seller_id,created_at,updated_at) VALUES
	 (7,7,'Bibicleta 4x4','Color negro','https://i.ebayimg.com/images/g/Y40AAOSwKX1jYJWX/s-l500.png',2000.0,500,1,'2022-11-14 14:23:46','2022-11-14 14:23:46'),
	 (8,4,'Gafas de sol','Blancas','https://i.ebayimg.com/images/g/l-8AAOSwMLBhrrZ7/s-l500.jpg',200.0,50,2,'2022-11-14 14:24:51','2022-11-14 14:24:51');


