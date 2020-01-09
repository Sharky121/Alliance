DROP DATABASE IF EXISTS alliance;
CREATE DATABASE alliance
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
USE alliance;

CREATE TABLE category (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(64) NOT NULL UNIQUE
);

CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(128) NOT NULL UNIQUE,
	category_id INT NOT NULL,
	small_desc TEXT,
	content TEXT,
	image_path VARCHAR(255),
	link_path VARCHAR(255)
);

-- ДОБАВЛЕНИЕ КАТЕГОРИЙ
-- 
INSERT INTO category SET title = 'Литье пластмасс';
INSERT INTO category SET title = 'Литье цветных металлов';
INSERT INTO category SET title = 'Периферийное оборудование';
INSERT INTO category SET title = 'Экструдеры';
INSERT INTO category SET title = 'Пресс-формы';
INSERT INTO category SET title = 'Запасные части';

-- ДОБАВЛЕНИЕ продуктов
-- 
-- Пластмассы
INSERT INTO products 
SET title = 'Серия ТПА с помпой переменной производительности',
	category_id = '1';

INSERT INTO products 
SET title = 'Вертикальные термопластавтоматы стандартной серии',
	category_id = '1';

INSERT INTO products 
SET title = 'Вертикальные термопластавтоматы для тонкостенного литья',
	category_id = '1';

INSERT INTO products 
SET title = 'Серия ТПА с сервоприводом',
	category_id = '1';


-- Литье металлов
INSERT INTO products 
SET title = 'Машины для литья цветных металлов под давлением (холодная камера)',
	category_id = '2',
	small_desc = 'Литьевые машины с помпой переменной производительности потребляют на 30–35% меньше энергии по сравнению с стационарным насосом.
Производительность этих термопластавтоматов на 20% выше по сравнению с обычным стандартным оборудованием.',
	content ='<table class="striped responsive-table centered table-custom">
                  <thead>
                  <tr>
                    <th></th>
                    <th>Ед.изм.</th>
                    <th>Titan 58GL</th>
                    <th>Titan 88GL</th>
                    <th>Titan 128GL</th>
                    <th>Titan 160GL</th>
                    <th>Titan 220GL</th>
                    <th>Titan 260GL</th>
                  </tr>
                  </thead>

                  <tbody>
                  <!--  Узел впрыска -->
                  <tr>
                    <td>Диаметр шнека</td>
                    <td>мм</td>
                    <td>26 30 34</td>
                    <td>35 37 40</td>
                    <td>37 40 43</td>
                    <td>40 45 48</td>
                    <td>45 50 55</td>
                    <td>50 55 60</td>
                  </tr>
                  <tr>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td></td>
                    <td>24:1 21:1 19:1</td>
                    <td>20,6:1 19,5:1 18:1</td>
                    <td>21:1 19,6:1 18,2:1</td>
                    <td>22,5:1 20:1 18:1</td>
                    <td>22,2:01 20:01 18,2:01</td>
                    <td>22,5:1 20,5:1 18,8:1</td>
                  </tr>
                  <tr>
                    <td>Объём впрыска</td>
                    <td>см3</td>
                    <td>66 88 113</td>
                    <td>125 135 158</td>
                    <td>183 214 247</td>
                    <td>270 342 389</td>
                    <td>350 432 522</td>
                    <td>491 594 707</td>
                  </tr>
                  <tr>
                    <td>Масса впрыска</td>
                    <td>г</td>
                    <td>60 80 103</td>
                    <td>109 122 142</td>
                    <td>164 192 222</td>
                    <td>243 308 350</td>
                    <td>315 389 470</td>
                    <td>442 534 636</td>
                  </tr>
                  <tr>
                    <td>Давление впрыска</td>
                    <td>МПа</td>
                    <td>245 184 143</td>
                    <td>193 173 148</td>
                    <td>196 168 145</td>
                    <td>215 169 149</td>
                    <td>210 170 141</td>
                    <td>205 169 142</td>
                  </tr>
                  <tr>
                    <td>Скорость впрыска</td>
                    <td>см3/с</td>
                    <td>120</td>
                    <td>93</td>
                    <td>99</td>
                    <td>103</td>
                    <td>96</td>
                    <td>91</td>
                  </tr>
                  <tr>
                    <td>Скорость пластификации</td>
                    <td>кг/ч</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>Ход шнека</td>
                    <td>мм</td>
                    <td>125</td>
                    <td>126</td>
                    <td>170</td>
                    <td>215</td>
                    <td>220</td>
                    <td>250</td>
                  </tr>
                  <tr>
                    <td>Скорость вращения шнека (плавная)</td>
                    <td>об/мин</td>
                    <td>0-220</td>
                    <td>0-220</td>
                    <td>0-200</td>
                    <td>0 - 200</td>
                    <td>0 - 200</td>
                    <td>0 - 180</td>
                  </tr>
                  <!--  Узел смыкания -->
                  <tr>
                    <td>Усилие смыкания</td>
                    <td>кН</td>
                    <td>580</td>
                    <td>880</td>
                    <td>1280</td>
                    <td>1600</td>
                    <td>2200</td>
                    <td>2600</td>
                  </tr>
                  <tr>
                    <td>Длина хода подвижной плиты</td>
                    <td>мм</td>
                    <td>270</td>
                    <td>320</td>
                    <td>365</td>
                    <td>445</td>
                    <td>495</td>
                    <td>540</td>
                  </tr>
                  <tr>
                    <td>Расстояние между колоннами</td>
                    <td>мм x мм</td>
                    <td>310*310</td>
                    <td>365*365</td>
                    <td>412*412</td>
                    <td>470*470</td>
                    <td>530*530</td>
                    <td>580*580</td>
                  </tr>
                  <tr>
                    <td>Размер плит</td>
                    <td>мм x мм</td>
                    <td>480*470</td>
                    <td>545*545</td>
                    <td>615*615</td>
                    <td>691*691</td>
                    <td>791*791</td>
                    <td>860*860</td>
                  </tr>
                  <tr>
                    <td>Макс. монтажная высота пресс-формы</td>
                    <td>мм</td>
                    <td>320</td>
                    <td>380</td>
                    <td>450</td>
                    <td>520</td>
                    <td>560</td>
                    <td>610</td>
                  </tr>
                  <tr>
                    <td>Мин. монтажная высота пресс-формы</td>
                    <td>мм</td>
                    <td>120</td>
                    <td>150</td>
                    <td>160</td>
                    <td>180</td>
                    <td>200</td>
                    <td>220</td>
                  </tr>
                  <tr>
                    <td>Ход выталкивания</td>
                    <td>мм</td>
                    <td>70</td>
                    <td>100</td>
                    <td>130</td>
                    <td>140</td>
                    <td>140</td>
                    <td>150</td>
                  </tr>
                  <tr>
                    <td>Усилие выталкивания</td>
                    <td>кН</td>
                    <td>22</td>
                    <td>27,5</td>
                    <td>39,6</td>
                    <td>39,6</td>
                    <td>62</td>
                    <td>62</td>
                  </tr>
                  <tr>
                    <td>Количество толкателей</td>
                    <td></td>
                    <td>1</td>
                    <td>3</td>
                    <td>5</td>
                    <td>5</td>
                    <td>9</td>
                    <td>9</td>
                  </tr>
                  <!--  Общее  -->
                  <tr>
                    <td>Давление насос-мотора</td>
                    <td>Мпа</td>
                    <td>17,5</td>
                    <td>16</td>
                    <td>16</td>
                    <td>16</td>
                    <td>16</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>Мощность насос-мотора</td>
                    <td>кВт</td>
                    <td>7,5</td>
                    <td>11</td>
                    <td>13</td>
                    <td>15</td>
                    <td>18,5</td>
                    <td>22</td>
                  </tr>
                  <tr>
                    <td>Объём масляного бака</td>
                    <td>Л</td>
                    <td>160</td>
                    <td>200</td>
                    <td>250</td>
                    <td>300</td>
                    <td>360</td>
                    <td>405</td>
                  </tr>
                  <tr>
                    <td>Мощность нагрева</td>
                    <td>кВт</td>
                    <td>7,1</td>
                    <td>7,9</td>
                    <td>9,5</td>
                    <td>14</td>
                    <td>16,25</td>
                    <td>17,3</td>
                  </tr>
                  <tr>
                    <td>Кол-во зон нагрева</td>
                    <td>кВт</td>
                    <td>4</td>
                    <td>4</td>
                    <td>4</td>
                    <td>5</td>
                    <td>5</td>
                    <td>5</td>
                  </tr>
                  <tr>
                    <td>Время сухого цикла</td>
                    <td>с</td>
                    <td>2,1</td>
                    <td>2,1</td>
                    <td>1,95</td>
                    <td>2,25</td>
                    <td>2,6</td>
                    <td>3,1</td>
                  </tr>
                  <tr>
                    <td>Габариты (Д x Ш x В)</td>
                    <td>м x м x м</td>
                    <td>3,9*1,04*1,78</td>
                    <td>4,05*1,14*1,94</td>
                    <td>4,5*1,2*2,0</td>
                    <td>4,9*1,27*2,16</td>
                    <td>5,5*1,32*2,24</td>
                    <td>5,93*1,4*2,32</td>
                  </tr>
                  <tr>
                    <td>Масса машины</td>
                    <td>кг</td>
                    <td>2500</td>
                    <td>3500</td>
                    <td>4350</td>
                    <td>5650</td>
                    <td>7100</td>
                    <td>8500</td>
                  </tr>
                  </tbody>
                </table>';

INSERT INTO products 
SET title = 'Машины для литья цветных металлов под давлением (горячая камера)',
	category_id = '2';

INSERT INTO products 
SET title = 'Периферия и роботизация',
	category_id = '2';

INSERT INTO products 
SET title = 'Печи',
	category_id = '2';

-- Периферия
INSERT INTO products 
SET title = 'Дробилки',
	category_id = '3';

INSERT INTO products 
SET title = 'Миксеры',
	category_id = '3';

INSERT INTO products 
SET title = 'Осушители полимерного сырья',
	category_id = '3';

INSERT INTO products 
SET title = 'Загрузчики',
	category_id = '3';

INSERT INTO products 
SET title = 'Термостаты',
	category_id = '3';

INSERT INTO products 
SET title = 'Чиллеры',
	category_id = '3';

INSERT INTO products 
SET title = 'Стеллажи',
	category_id = '3';

INSERT INTO products 
SET title = 'Роботы',
	category_id = '3';

INSERT INTO products 
SET title = 'Транспортеры',
	category_id = '3';

INSERT INTO products 
SET title = 'Циклонные системы',
	category_id = '3';

INSERT INTO products 
SET title = 'Шнековые дозаторы красителя',
	category_id = '3';
