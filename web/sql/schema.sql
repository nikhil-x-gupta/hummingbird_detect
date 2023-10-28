USE myproject;

CREATE TABLE image (
       image_id int PRIMARY KEY AUTO_INCREMENT,
       image_name varchar(32) NOT NULL,
       image_file MEDIUMBLOB
);

CREATE TABLE label (
       label_id int PRIMARY KEY AUTO_INCREMENT,
       box_x1 int NOT NULL,
       box_y1 int NOT NULL,
       box_x2 int NOT NULL,
       box_y2 int NOT NULL,
       label_name varchar(16),
       image_id int,
       FOREIGN KEY (image_id) REFERENCES image(image_id)
);
