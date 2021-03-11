DROP DATABASE IF EXISTS alliance;
CREATE DATABASE alliance
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
USE alliance;

CREATE TABLE pages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(64) NOT NULL UNIQUE,
  content LONGTEXT,
  seo_title VARCHAR(255),
  seo_description VARCHAR(255)
);

CREATE TABLE category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(64) NOT NULL UNIQUE,
  image_path VARCHAR(255),
  seo_title VARCHAR(255),
  seo_description VARCHAR(255)
);

CREATE TABLE video (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  video_url VARCHAR(255),
  category_id INT NOT NULL,
  seo_title VARCHAR(255),
  seo_description VARCHAR(255)
);

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(128) NOT NULL UNIQUE,
  category_id INT NOT NULL,
  price INT,
  small_desc TEXT,
  content LONGTEXT,
  image_path VARCHAR(255),
  big_image_path VARCHAR(255),
  seo_title VARCHAR(255),
  seo_description VARCHAR(255)
);

CREATE TABLE news (
  id INT AUTO_INCREMENT PRIMARY KEY,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  news_date DATE NOT NULL,
  title VARCHAR(255) NOT NULL UNIQUE,
  author VARCHAR(128) NOT NULL,
  author_link VARCHAR(128) NOT NULL,
  small_content LONGTEXT,
  content LONGTEXT,
  seo_title VARCHAR(255),
  seo_description VARCHAR(255)
);

CREATE TABLE articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(128) NOT NULL UNIQUE,
  small_image_path VARCHAR(255),
  small_content TEXT,
  content LONGTEXT,
  seo_title VARCHAR(255),
  seo_description VARCHAR(255)
);

-- ДОБАВЛЕНИЕ СТРАНИЦ
--
INSERT INTO pages SET title = 'Главная';
INSERT INTO pages SET title = 'Пресс-формы';
INSERT INTO pages SET title = 'Услуги';
INSERT INTO pages SET title = 'Новости';
INSERT INTO pages SET title = 'Наши работы';
INSERT INTO pages SET title = 'Контакты';
INSERT INTO pages SET title = 'Продукция';
INSERT INTO pages SET title = 'Запасные части';
INSERT INTO pages SET title = 'Биоразлагаемое сырье';
INSERT INTO pages SET title = 'Полезное';

-- ДОБАВЛЕНИЕ КАТЕГОРИЙ
--
INSERT INTO category SET title = 'Литье пластмасс',
                         image_path ='/img/catalog/prod1.png';
INSERT INTO category SET title = 'Литье цветных металлов',
                         image_path ='/img/catalog/lanson.jpg';
INSERT INTO category SET title = 'Периферийное оборудование',
                         image_path ='/img/catalog/drob.jpg';

INSERT INTO articles SET title = 'Литье изделий из биоразлагаемых материалов';
INSERT INTO articles SET title = 'Новый уровень производства автомобилей - монолитное литье';
