DROP DATABASE IF EXISTS alliance;
CREATE DATABASE alliance
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
USE alliance;

CREATE TABLE category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(64) NOT NULL UNIQUE,
  image_path VARCHAR(255)
);

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(128) NOT NULL UNIQUE,
  category_id INT NOT NULL,
  small_desc TEXT,
  content LONGTEXT,
  image_path VARCHAR(255),
  big_image_path VARCHAR(255)
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
-- ПЛАСТМАССЫ
-- Серия ТПА с помпой переменной производительности
INSERT INTO products
SET title = 'Серия ТПА с помпой переменной производительности',
    category_id = '1',
    image_path ='/img/catalog/prod1.png',
    big_image_path ='/img/products/prod1.png',
    small_desc = 'Литьевые машины с помпой переменной производительности потребляют на 30–35% меньше энергии по сравнению с стационарным насосом. Производительность этих термопластавтоматов на 20% выше по сравнению с обычным стандартным оборудованием.',
    content = '<p>Выберите серию: </p>
<div class="tabs">

  <!--  Контейнер с вкладками   -->
  <ul class="tab-header">
    <li class="tab-header__item js-tab-trigger active" data-tab="1">Titan 58GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="2">Titan 88GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="3">Titan 128GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="4">Titan 160GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="5">Titan 220GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="6">Titan 260GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="7">Titan 320GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="8">Titan 380GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="9">Titan 470GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="10">Titan 570GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="11">Titan 650GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="12">Titan 800GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="13">Titan 1000GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="14">Titan 1300GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="15">Titan 1600GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="16">Titan 2100GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="17">Titan 2800GL</li>
    <li class="tab-header__item js-tab-trigger" data-tab="18">Titan 3300GL</li>
  </ul>

  <!--  Контейнер с блоками, которые содержат контент вкладок   -->
  <ul class="tab-content">

    <!-- Titan 58GL -->
    <li class="tab-content__item js-tab-content active" data-tab="1">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>26</td>
          <td>30</td>
          <td>34</td>
          <td>24:1</td>
          <td>21:1</td>
          <td>19:1</td>
          <td>66</td>
          <td>88</td>
          <td>113</td>
          <td>60</td>
          <td>80</td>
          <td>103</td>
          <td>245</td>
          <td>184</td>
          <td>143</td>
          <td>125</td>
          <td>0-220</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>580</td>
          <td>270</td>
          <td>310*310</td>
          <td>480*470</td>
          <td>320</td>
          <td>120</td>
          <td>70</td>
          <td>22</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>17,5</td>
          <td>7,5</td>
          <td>160</td>
          <td>7,1</td>
          <td>2,1</td>
          <td>3,9*1,04*1,78</td>
          <td>2500</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 88GL -->
    <li class="tab-content__item js-tab-content" data-tab="2">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>35</td>
          <td>37</td>
          <td>40</td>
          <td>20,6:1</td>
          <td>19,5:1</td>
          <td>18:1</td>
          <td>125</td>
          <td>135</td>
          <td>158</td>
          <td>109</td>
          <td>122</td>
          <td>142</td>
          <td>193</td>
          <td>173</td>
          <td>148</td>
          <td>126</td>
          <td>0-220</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td >Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>880</td>
          <td>320</td>
          <td>365*365</td>
          <td>545*545</td>
          <td>380</td>
          <td>150</td>
          <td>100</td>
          <td>27,5</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td >Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>11</td>
          <td>200</td>
          <td>7,9</td>
          <td>2,1</td>
          <td>4,05*1,14*1,94</td>
          <td>3500</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 128GL -->
    <li class="tab-content__item js-tab-content" data-tab="3">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>37</td>
          <td>40</td>
          <td>43</td>
          <td>21:1</td>
          <td>19,6:1</td>
          <td>18,2:1</td>
          <td>183</td>
          <td>214</td>
          <td>247</td>
          <td>164</td>
          <td>192</td>
          <td>222</td>
          <td>196</td>
          <td>168</td>
          <td>145</td>
          <td>170</td>
          <td>0-200</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td >Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td >1280</td>
          <td>365</td>
          <td>412*412</td>
          <td>615*615</td>
          <td>450</td>
          <td>160</td>
          <td>130</td>
          <td>39,6</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td >Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td >16</td>
          <td>13</td>
          <td>250</td>
          <td>9,5</td>
          <td>1,95</td>
          <td>4,5*1,2*2,0</td>
          <td>4350</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 160GL -->
    <li class="tab-content__item js-tab-content" data-tab="4">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>40</td>
          <td>45</td>
          <td>48</td>
          <td>22,5:1</td>
          <td>20:1</td>
          <td>18:8</td>
          <td>270</td>
          <td>342</td>
          <td>389</td>
          <td>243</td>
          <td>308</td>
          <td>350</td>
          <td>215</td>
          <td>169</td>
          <td>149</td>
          <td>215</td>
          <td>0-200</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table >
        <tbody>
        <tr>
          <td >Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td >1600</td>
          <td>445</td>
          <td>470*470</td>
          <td>691*691</td>
          <td>520</td>
          <td>180</td>
          <td>140</td>
          <td>39,6</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table >
        <tbody>
        <tr>
          <td >Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td >16</td>
          <td>15</td>
          <td>300</td>
          <td>14</td>
          <td>2,25</td>
          <td>4,9*1,27*2,16</td>
          <td>5650</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 220GL -->
    <li class="tab-content__item js-tab-content" data-tab="5">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>45</td>
          <td>50</td>
          <td>55</td>
          <td>22,2:01</td>
          <td>20:01</td>
          <td>18,2:01</td>
          <td>350</td>
          <td>432</td>
          <td>522</td>
          <td>315</td>
          <td>389</td>
          <td>470</td>
          <td>210</td>
          <td>170</td>
          <td>141</td>
          <td>220</td>
          <td>0-200</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td >2200</td>
          <td>495</td>
          <td>530*530</td>
          <td>791*791</td>
          <td>560</td>
          <td>200</td>
          <td>140</td>
          <td>62</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td >16</td>
          <td>18,5</td>
          <td>360</td>
          <td>16,25</td>
          <td>2,6</td>
          <td>5,5*1,32*2,24</td>
          <td>7100</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 260GL -->
    <li class="tab-content__item js-tab-content" data-tab="6">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>50</td>
          <td>55</td>
          <td>60</td>
          <td>22,5:1</td>
          <td>20,5:1</td>
          <td>18,8:1</td>
          <td>491</td>
          <td>594</td>
          <td>707</td>
          <td>442</td>
          <td>534</td>
          <td>636</td>
          <td>205</td>
          <td>169</td>
          <td>142</td>
          <td>250</td>
          <td>0-180</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>2600</td>
          <td>540</td>
          <td>580*580</td>
          <td>860*860</td>
          <td>610</td>
          <td>220</td>
          <td>150</td>
          <td>62</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>22</td>
          <td>405</td>
          <td>17,3</td>
          <td>3,1</td>
          <td>5,93*1,4*2,32</td>
          <td>8500</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 320GL -->
    <li class="tab-content__item js-tab-content" data-tab="7">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>60</td>
          <td>65</td>
          <td>70</td>
          <td>21,7:1</td>
          <td>20:1</td>
          <td>18,6:1</td>
          <td>735</td>
          <td>862</td>
          <td>1000</td>
          <td>661</td>
          <td>776</td>
          <td>900</td>
          <td>219</td>
          <td>187</td>
          <td>161</td>
          <td>260</td>
          <td>0-180</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>3200</td>
          <td>640</td>
          <td>685*685</td>
          <td>990*990</td>
          <td>690</td>
          <td>250</td>
          <td>160</td>
          <td>70</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>30</td>
          <td>600</td>
          <td>24,2</td>
          <td>3,6</td>
          <td>6,88*1,77*2,43</td>
          <td>13200</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 380GL -->
    <li class="tab-content__item js-tab-content" data-tab="8">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>65</td>
          <td>70</td>
          <td>75</td>
          <td>22,4:1</td>
          <td>20,6:1</td>
          <td>19,2:1</td>
          <td>1094</td>
          <td>1269</td>
          <td>1457</td>
          <td>985</td>
          <td>1142</td>
          <td>1311</td>
          <td>208</td>
          <td>180</td>
          <td>156</td>
          <td>330</td>
          <td>0-180</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>3800</td>
          <td>700</td>
          <td>726*726</td>
          <td>1036*1040</td>
          <td>760</td>
          <td>250</td>
          <td>180</td>
          <td>110</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>37</td>
          <td>700</td>
          <td>26</td>
          <td>3,3</td>
          <td>7,36*1,88*2,62</td>
          <td>15000</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 470GL -->
    <li class="tab-content__item js-tab-content" data-tab="9">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>75</td>
          <td>80</td>
          <td>84</td>
          <td>21,4:1</td>
          <td>20:01</td>
          <td>19:1</td>
          <td>1722</td>
          <td>1959</td>
          <td>2160</td>
          <td>1550</td>
          <td>1763</td>
          <td>1944</td>
          <td>177</td>
          <td>156</td>
          <td>141</td>
          <td>390</td>
          <td>0-160</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>4700</td>
          <td>780</td>
          <td>820*800</td>
          <td>1210*1180</td>
          <td>830</td>
          <td>300</td>
          <td>200</td>
          <td>120</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>45</td>
          <td>800</td>
          <td>32,5</td>
          <td>3,1</td>
          <td>7,92*1,97*2,69</td>
          <td>19000</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 570GL -->
    <li class="tab-content__item js-tab-content" data-tab="10">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="4">Соотношение длины шнека к диаметру</td>
          <td colspan="4">Объём впрыска, см3</td>
          <td colspan="4">Масса впрыска, г</td>
          <td colspan="4">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>23,6:1</td>
          <td>21,1:1</td>
          <td>19,7:1</td>
          <td>17,7:1</td>
          <td>1987</td>
          <td>2492</td>
          <td>2861</td>
          <td>3532</td>
          <td>1788</td>
          <td>2242</td>
          <td>2575</td>
          <td>3179</td>
          <td>205</td>
          <td>163</td>
          <td>142</td>
          <td>115</td>
          <td>450</td>
          <td>0-110</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td rowspan="4">5700</td>
          <td rowspan="4">850</td>
          <td rowspan="4">835*835</td>
          <td rowspan="4">1240*1250</td>
          <td rowspan="4">920</td>
          <td rowspan="4">350</td>
          <td rowspan="4">250</td>
          <td rowspan="4">158</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td rowspan="4">16</td>
          <td rowspan="4">55</td>
          <td rowspan="4">1000</td>
          <td rowspan="4">39,6</td>
          <td rowspan="4">3,6</td>
          <td rowspan="4">8,82*2,32*2,80</td>
          <td rowspan="4">27000</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 650GL -->
    <li class="tab-content__item js-tab-content" data-tab="11">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="4">Диаметр шнека, мм</td>
          <td colspan="4">Соотношение длины шнека к диаметру</td>
          <td colspan="4">Объём впрыска, см3</td>
          <td colspan="4">Масса впрыска, г</td>
          <td colspan="4">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>80</td>
          <td>90</td>
          <td>100</td>
          <td>110</td>
          <td>24,8:1</td>
          <td>22:01</td>
          <td>19,8:1</td>
          <td>18:01</td>
          <td>2261</td>
          <td>2861</td>
          <td>3533</td>
          <td>4274</td>
          <td>2035</td>
          <td>2575</td>
          <td>3179</td>
          <td>3847</td>
          <td>224</td>
          <td>177</td>
          <td>143</td>
          <td>118</td>
          <td>450</td>
          <td>0-110</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td rowspan="4">6500</td>
          <td rowspan="4">900</td>
          <td rowspan="4">900*900</td>
          <td rowspan="4">1350*1400</td>
          <td rowspan="4">900</td>
          <td rowspan="4">400</td>
          <td rowspan="4">260</td>
          <td rowspan="4">186</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td rowspan="4">16</td>
          <td rowspan="4">30+30</td>
          <td rowspan="4">1200</td>
          <td rowspan="4">50,9</td>
          <td rowspan="4">3,3</td>
          <td rowspan="4">9,93*2,45*2,8</td>
          <td rowspan="4">32000</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 800GL -->
    <li class="tab-content__item js-tab-content" data-tab="12">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="4">Диаметр шнека, мм</td>
          <td colspan="4">Соотношение длины шнека к диаметру</td>
          <td colspan="4">Объём впрыска, см3</td>
          <td colspan="4">Масса впрыска, г</td>
          <td colspan="4">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>90</td>
          <td>100</td>
          <td>110</td>
          <td>120</td>
          <td>24,5:1</td>
          <td>22:01</td>
          <td>20:01</td>
          <td>18,3:1</td>
          <td>2925</td>
          <td>3611</td>
          <td>4369</td>
          <td>5200</td>
          <td>2632</td>
          <td>3250</td>
          <td>3932</td>
          <td>4680</td>
          <td>228</td>
          <td>184</td>
          <td>152</td>
          <td>128</td>
          <td>460</td>
          <td>0-110</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td rowspan="4">8000</td>
          <td rowspan="4">1040</td>
          <td rowspan="4">1000*1000</td>
          <td rowspan="4">1465*1480</td>
          <td rowspan="4">1030</td>
          <td rowspan="4">400</td>
          <td rowspan="4">280</td>
          <td rowspan="4">186</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td rowspan="4">16</td>
          <td rowspan="4">37+37</td>
          <td rowspan="4">1500</td>
          <td rowspan="4">56,1</td>
          <td rowspan="4">3,3</td>
          <td rowspan="4">11,05*2,65*3,80</td>
          <td rowspan="4">40000</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 1000GL -->
    <li class="tab-content__item js-tab-content" data-tab="13">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="4">Диаметр шнека, мм</td>
          <td colspan="4">Соотношение длины шнека к диаметру</td>
          <td colspan="4">Объём впрыска, см3</td>
          <td colspan="4">Масса впрыска, г</td>
          <td colspan="4">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>100</td>
          <td>110</td>
          <td>120</td>
          <td>130</td>
          <td>24,3:1</td>
          <td>22,1:1</td>
          <td>20,2:1</td>
          <td>18,7:1</td>
          <td>4004</td>
          <td>4844</td>
          <td>5765</td>
          <td>6766</td>
          <td>3603</td>
          <td>4360</td>
          <td>5189</td>
          <td>6089</td>
          <td>211</td>
          <td>174</td>
          <td>146</td>
          <td>125</td>
          <td>510</td>
          <td>0-107</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td rowspan="4">10000</td>
          <td rowspan="4">1200</td>
          <td rowspan="4">1120*1120</td>
          <td rowspan="4">1680*1780</td>
          <td rowspan="4">1200</td>
          <td rowspan="4">500</td>
          <td rowspan="4">320</td>
          <td rowspan="4">215</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td rowspan="4">16</td>
          <td rowspan="4">45+45</td>
          <td rowspan="4">1900</td>
          <td rowspan="4">79,35</td>
          <td rowspan="4">5,78</td>
          <td rowspan="4">12,0*3,0*3,3</td>
          <td rowspan="4">55000</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 1300GL -->
    <li class="tab-content__item js-tab-content" data-tab="14">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="4">Диаметр шнека, мм</td>
          <td colspan="4">Соотношение длины шнека к диаметру</td>
          <td colspan="4">Объём впрыска, см3</td>
          <td colspan="4">Масса впрыска, г</td>
          <td colspan="4">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>110</td>
          <td>120</td>
          <td>130</td>
          <td>140</td>
          <td>26,2:1</td>
          <td>24,1:1</td>
          <td>22,4:1</td>
          <td>20,9:1</td>
          <td>5224</td>
          <td>6217</td>
          <td>7297</td>
          <td>8462</td>
          <td>4702</td>
          <td>5595</td>
          <td>6567</td>
          <td>7616</td>
          <td>205</td>
          <td>172</td>
          <td>147</td>
          <td>126</td>
          <td>550</td>
          <td>0-91</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td rowspan="4">13000</td>
          <td rowspan="4">1400</td>
          <td rowspan="4">1350*1280</td>
          <td rowspan="4">1934*1896</td>
          <td rowspan="4">1400</td>
          <td rowspan="4">550</td>
          <td rowspan="4">350</td>
          <td rowspan="4">215</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td rowspan="4">16</td>
          <td rowspan="4">55+55</td>
          <td rowspan="4">2400</td>
          <td rowspan="4">84,95</td>
          <td rowspan="4">7,4</td>
          <td rowspan="4">13,2*3,1*3,6</td>
          <td rowspan="4">67000</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 1600GL -->
    <li class="tab-content__item js-tab-content" data-tab="15">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="4">Диаметр шнека, мм</td>
          <td colspan="4">Соотношение длины шнека к диаметру</td>
          <td colspan="4">Объём впрыска, см3</td>
          <td colspan="4">Масса впрыска, г</td>
          <td colspan="4">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная)</td>
        </tr>
        <tr>
          <td>120</td>
          <td>130</td>
          <td>140</td>
          <td>150</td>
          <td>26,1:1</td>
          <td>24:1</td>
          <td>22,4:1</td>
          <td>20,9:1</td>
          <td>6669</td>
          <td>7827</td>
          <td>9078</td>
          <td>10421</td>
          <td>6002</td>
          <td>7045</td>
          <td>8170</td>
          <td>9379</td>
          <td>193</td>
          <td>164</td>
          <td>142</td>
          <td>123</td>
          <td>590</td>
          <td>0-99</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td rowspan="4">16000</td>
          <td rowspan="4">1600</td>
          <td rowspan="4">1500*1415</td>
          <td rowspan="4">2180*2180</td>
          <td rowspan="4">1500</td>
          <td rowspan="4">700</td>
          <td rowspan="4">350</td>
          <td rowspan="4">318</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td rowspan="4">16</td>
          <td rowspan="4">45+45+45</td>
          <td rowspan="4">2800</td>
          <td rowspan="4">101,85</td>
          <td rowspan="4">6,4</td>
          <td rowspan="4">13,85*3,43*4,20</td>
          <td rowspan="4">105000</td>
        </tr>
        </tbody>
      </table>

    </li>

    <!-- Titan 2100GL -->
    <li class="tab-content__item js-tab-content" data-tab="16">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная), об/мин</td>
        </tr>
        <tr>
          <td>140</td>
          <td>150</td>
          <td>160</td>
          <td>22,4:1</td>
          <td>20,9:1</td>
          <td>19,6:1</td>
          <td>11084</td>
          <td>12723</td>
          <td>14476</td>
          <td>10086</td>
          <td>11578</td>
          <td>13174</td>
          <td>163</td>
          <td>142</td>
          <td>125</td>
          <td>720</td>
          <td>0-80</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>21000</td>
          <td>1800</td>
          <td>1750*1600</td>
          <td>2480*2380</td>
          <td>1700</td>
          <td>780</td>
          <td>400</td>
          <td>430</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Время сухого цикла, с</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>45+55+55</td>
          <td>3000</td>
          <td>114,05</td>
          <td>8,5</td>
          <td>16,0*3,6*4,8</td>
          <td>139000</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 2800GL -->
    <li class="tab-content__item js-tab-content" data-tab="17">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td colspan="3">Диаметр шнека, мм</td>
          <td colspan="3">Соотношение длины шнека к диаметру</td>
          <td colspan="3">Объём впрыска, см3</td>
          <td colspan="3">Масса впрыска, г</td>
          <td colspan="3">Давление впрыска, МПа</td>
          <td colspan="3">Ход шнека, мм</td>
          <td colspan="3">Скорость вращения шнека (плавная), об/мин</td>
        </tr>
        <tr>
          <td>170</td>
          <td>200</td>
          <td>215</td>
          <td>23,5:1</td>
          <td>20:1</td>
          <td>21:1</td>
          <td>19293</td>
          <td>35154</td>
          <td>43530</td>
          <td>17557</td>
          <td>31990</td>
          <td>39612</td>
          <td>161</td>
          <td>137</td>
          <td>135</td>
          <td>850</td>
          <td>1120</td>
          <td>1200</td>
          <td>0-65</td>
          <td>0-60</td>
          <td>0-50</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>28000</td>
          <td>2000</td>
          <td>1900*1750</td>
          <td>2735*2685</td>
          <td>1900</td>
          <td>1000</td>
          <td>450</td>
          <td>430</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>55*3</td>
          <td>4000</td>
          <td>170</td>
          <td>19*4*5,5</td>
          <td>192000</td>
        </tr>
        <tr>
          <td>45+55*3</td>
          <td>170</td>
          <td>197000</td>
        </tr>
        <tr>
          <td>55*4</td>
          <td>188</td>
          <td>209000</td>
        </tr>
        </tbody>
      </table>
    </li>

    <!-- Titan 3300GL -->
    <li class="tab-content__item js-tab-content" data-tab="18">

      <!--  Узел впрыска -->
      <h3 class="spec-title">Узел впрыска</h3>
      <table>
        <tbody>
        <tr>
          <td>Диаметр шнека, мм</td>
          <td>Соотношение длины шнека к диаметру</td>
          <td>Объём впрыска, см3</td>
          <td>Масса впрыска, г</td>
          <td>Давление впрыска, МПа</td>
          <td>Ход шнека, мм</td>
          <td>Скорость вращения шнека (плавная), об/мин</td>
        </tr>
        <tr>
          <td>215</td>
          <td>21:1</td>
          <td>43530</td>
          <td>39612</td>
          <td>135</td>
          <td>1200</td>
          <td>0-50</td>
        </tr>
        </tbody>
      </table>

      <!--  Узел смыкания -->
      <h3 class="spec-title">Узел смыкания</h3>
      <table>
        <tbody>
        <tr>
          <td>Усилие смыкания, кН</td>
          <td>Длина хода подвижной плиты, мм</td>
          <td>Расстояние между колоннами, мм x мм</td>
          <td>Размер плит, мм x мм</td>
          <td>Макс. монтажная высота пресс-формы, мм</td>
          <td>Мин. монтажная высота пресс-формы, мм</td>
          <td>Ход выталкивания, мм</td>
          <td>Усилие выталкивания, кН</td>
        </tr>
        <tr>
          <td>33000</td>
          <td>2150</td>
          <td>2160*1900</td>
          <td>3100*3005</td>
          <td>1900</td>
          <td>1000</td>
          <td>500</td>
          <td>550</td>
        </tr>
        </tbody>
      </table>

      <!--  Общее  -->
      <h3 class="spec-title">Общее</h3>
      <table>
        <tbody>
        <tr>
          <td>Давление насос-мотора, Мпа</td>
          <td>Мощность насос-мотора, кВт</td>
          <td>Объём масляного бака, Л</td>
          <td>Мощность нагрева, кВт</td>
          <td>Габариты (ДxШxВ), М x М x М</td>
          <td>Масса машины, кг</td>
        </tr>
        <tr>
          <td>16</td>
          <td>55*4</td>
          <td>4700</td>
          <td>188</td>
          <td>22*4,5*5,7</td>
          <td>250000</td>
        </tr>
        </tbody>
      </table>
    </li>
  </ul>
</div>';

-- Вертикальные термопластавтоматы стандартной серии
INSERT INTO products
SET title = 'Вертикальные термопластавтоматы стандартной серии',
    image_path ='/img/catalog/vertTPA2.jpg',
    big_image_path ='',
    category_id = '1',
    small_desc = 'Экономьте рабочие площади вашего производства и получайте сложные комплексные изделия с помощью вертикальных термопластавтоматов.
                  Вертикальная конструкция помогает сократить расходы, уменьшить количество отходов, сохраняя при этом процесс как можно более эффективным.',

    content = '          <p>Выберите серию: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">JS-150</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">JS-150S</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">JS-180</li>
              <li class="tab-header__item js-tab-trigger" data-tab="4">JS-180D</li>

              <li class="tab-header__item js-tab-trigger" data-tab="5">JS-180DM</li>
              <li class="tab-header__item js-tab-trigger" data-tab="6">JS-300</li>
              <li class="tab-header__item js-tab-trigger" data-tab="7">JS-300D</li>
              <li class="tab-header__item js-tab-trigger" data-tab="8">JS-300DM</li>


              <li class="tab-header__item js-tab-trigger" data-tab="9">JS-450</li>
              <li class="tab-header__item js-tab-trigger" data-tab="10">JS-450D</li>
              <li class="tab-header__item js-tab-trigger" data-tab="11">JS-450DM</li>

              <li class="tab-header__item js-tab-trigger" data-tab="12">JS-550</li>
              <li class="tab-header__item js-tab-trigger" data-tab="13">JS-550D</li>
              <li class="tab-header__item js-tab-trigger" data-tab="14">JS-550DM</li>

              <li class="tab-header__item js-tab-trigger" data-tab="15">JS-850</li>
              <li class="tab-header__item js-tab-trigger" data-tab="16">JS-850D</li>
              <li class="tab-header__item js-tab-trigger" data-tab="17">JS-850DM</li>

              <li class="tab-header__item js-tab-trigger" data-tab="18">JS-1200</li>
              <li class="tab-header__item js-tab-trigger" data-tab="19">JS-1200D</li>
              <li class="tab-header__item js-tab-trigger" data-tab="20">JS-1200DM</li>

              <li class="tab-header__item js-tab-trigger" data-tab="21">JS-450R</li>
              <li class="tab-header__item js-tab-trigger" data-tab="22">JS-550R</li>
              <li class="tab-header__item js-tab-trigger" data-tab="23">JS-850R</li>
              <li class="tab-header__item js-tab-trigger" data-tab="24">JS-1200R</li>
            </ul>


            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
              <!-- JS150 -->
              <li class="tab-content__item js-tab-content active" data-tab="1">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>22 25 28</td>
                    <td>1322 1098 816</td>
                    <td>38 49 61</td>
                    <td>35 45 56</td>
                    <td>1,2 1,5 1,9</td>
                    <td>24 30 38</td>
                    <td>100</td>
                    <td>0-215</td>
                    <td>2+1</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>15</td>
                    <td>7</td>
                    <td>430*250</td>
                    <td>250</td>
                    <td>100/160</td>
                    <td>160</td>
                    <td>260/320</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Масса при транспортировке, Т</td>
                    <td>Габариты при траспортировке, М</td>
                  </tr>
                  <tr>
                    <td>60</td>
                    <td>140</td>
                    <td>23</td>
                    <td>80</td>
                    <td>400-600</td>
                    <td>2,2</td>
                    <td>2</td>
                    <td>4,2</td>
                    <td>0,5</td>
                    <td>1,4*0,8*2,1</td>
                    <td>0,75</td>
                    <td>1,6*1*2,23</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS150S -->
              <li class="tab-content__item js-tab-content" data-tab="2">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>22 25 28</td>
                    <td>1322 1098 816</td>
                    <td>38 49 61</td>
                    <td>35 45 56</td>
                    <td>1,2 1,5 1,9</td>
                    <td>24 30 38</td>
                    <td>100</td>
                    <td>0-215</td>
                    <td>2+1</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>15</td>
                    <td>7</td>
                    <td>430*250</td>
                    <td>250</td>
                    <td>100/160</td>
                    <td>160</td>
                    <td>260/320</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>90</td>
                    <td>140</td>
                    <td>23</td>
                    <td>80</td>
                    <td>400-600</td>
                    <td>4</td>
                    <td>2</td>
                    <td>6,3</td>
                    <td>0,55</td>
                    <td>1,4*0,8*2,1</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS180 -->
              <li class="tab-content__item js-tab-content" data-tab="3">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>22 25 28</td>
                    <td>1322 1098 816</td>
                    <td>38 49 61</td>
                    <td>35 45 56</td>
                    <td>1,2 1,5 1,9</td>
                    <td>24 30 38</td>
                    <td>100</td>
                    <td>0-215</td>
                    <td>2+1</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>15</td>
                    <td>7</td>
                    <td>430*290</td>
                    <td>280*140</td>
                    <td>100/160</td>
                    <td>180</td>
                    <td>280/340</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>60</td>
                    <td>140</td>
                    <td>23</td>
                    <td>80</td>
                    <td>400-600</td>
                    <td>2,2</td>
                    <td>2</td>
                    <td>4,2</td>
                    <td>0,55</td>
                    <td>1,4*0,8*2,1</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS180D -->
              <li class="tab-content__item js-tab-content" data-tab="4">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>22 25 28</td>
                    <td>1322 1098 816</td>
                    <td>38 49 61</td>
                    <td>35 45 56</td>
                    <td>1,2 1,5 1,9</td>
                    <td>24 30 38</td>
                    <td>100</td>
                    <td>0-215</td>
                    <td>2+1</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>15</td>
                    <td>7</td>
                    <td>430*290</td>
                    <td>280*140</td>
                    <td>100/160</td>
                    <td>180</td>
                    <td>280/340</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>-</td>
                    <td>140</td>
                    <td>23</td>
                    <td>80</td>
                    <td>400-600</td>
                    <td>2,2</td>
                    <td>2</td>
                    <td>4,2</td>
                    <td>0,6</td>
                    <td>1,4*0,8*2,1</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JS-180DM -->
              <li class="tab-content__item js-tab-content" data-tab="5">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>22 25 28</td>
                    <td>1322 1098 816</td>
                    <td>38 49 61</td>
                    <td>35 45 56</td>
                    <td>1,2 1,5 1,9</td>
                    <td>24 30 38</td>
                    <td>100</td>
                    <td>0-215</td>
                    <td>2+1</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>15</td>
                    <td>7</td>
                    <td>430*290</td>
                    <td>280*140</td>
                    <td>100/160</td>
                    <td>180</td>
                    <td>280/340</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>60</td>
                    <td>140</td>
                    <td>23</td>
                    <td>80</td>
                    <td>400-600</td>
                    <td>5</td>
                    <td>2</td>
                    <td>6,3</td>
                    <td>0,7</td>
                    <td>1,4*0,8*2,1</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-300 -->
              <li class="tab-content__item js-tab-content" data-tab="6">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>25 28 30 32</td>
                    <td>1600 1275 1111 976</td>
                    <td>53 67 77 88</td>
                    <td>48 61 70 80</td>
                    <td>1,6 2,1 2,4 2,7</td>
                    <td>35 43 50 57</td>
                    <td>100</td>
                    <td>0-205</td>
                    <td>3</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>30</td>
                    <td>6,5</td>
                    <td>520*370</td>
                    <td>355*205</td>
                    <td>130/190</td>
                    <td>180</td>
                    <td>310/370</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>90</td>
                    <td>140</td>
                    <td>28</td>
                    <td>100</td>
                    <td>400-600</td>
                    <td>4</td>
                    <td>2,7</td>
                    <td>6,7</td>
                    <td>1,1</td>
                    <td>1,6*1,24*1,9</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-300D -->
              <li class="tab-content__item js-tab-content" data-tab="7">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>25 28 30 32</td>
                    <td>1600 1275 1111 976</td>
                    <td>53 67 77 88</td>
                    <td>48 61 70 80</td>
                    <td>1,6 2,1 2,4 2,7</td>
                    <td>35 43 50 57</td>
                    <td>100</td>
                    <td>0-205</td>
                    <td>3</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>30</td>
                    <td>6,5</td>
                    <td>520*370</td>
                    <td>355*205</td>
                    <td>130/190</td>
                    <td>180</td>
                    <td>310/370</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>60</td>
                    <td>140</td>
                    <td>28</td>
                    <td>100</td>
                    <td>400-600</td>
                    <td>4</td>
                    <td>2,7</td>
                    <td>6,7</td>
                    <td>1,2</td>
                    <td>1,6*1,24*1,9</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-300DM -->
              <li class="tab-content__item js-tab-content" data-tab="8">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>25 28 30 32</td>
                    <td>1600 1275 1111 976</td>
                    <td>53 67 77 88</td>
                    <td>48 61 70 80</td>
                    <td>1,6 2,1 2,4 2,7</td>
                    <td>35 43 50 57</td>
                    <td>100</td>
                    <td>0-205</td>
                    <td>3</td>
                    <td>15</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>30</td>
                    <td>6,5</td>
                    <td>520*370</td>
                    <td>355*205</td>
                    <td>130/190</td>
                    <td>180</td>
                    <td>310/370</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>-</td>
                    <td>140</td>
                    <td>28</td>
                    <td>100</td>
                    <td>400-600</td>
                    <td>4</td>
                    <td>2,7</td>
                    <td>6,7</td>
                    <td>1,3</td>
                    <td>1,6*1,24*1,9</td>
                  </tr>
                  </tbody>
                </table>
              </li>


              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JS-450 -->
              <li class="tab-content__item js-tab-content" data-tab="9">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>25 28 30 35</td>
                    <td>2509 2000 1742 1280</td>
                    <td>59 74 85 115</td>
                    <td>54 67 77 105</td>
                    <td>1,9 2,3 2,7 3,7</td>
                    <td>36 45 52 71</td>
                    <td>120</td>
                    <td>0-190</td>
                    <td>3</td>
                    <td>20</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>45</td>
                    <td>8,3</td>
                    <td>580*430</td>
                    <td>400*250</td>
                    <td>150/210</td>
                    <td>200</td>
                    <td>350/410</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>120</td>
                    <td>140</td>
                    <td>41</td>
                    <td>130</td>
                    <td>600-800</td>
                    <td>5,5</td>
                    <td>3,5</td>
                    <td>9</td>
                    <td>1,4</td>
                    <td>1,7*1,35*2,15</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-450D -->
              <li class="tab-content__item js-tab-content" data-tab="10">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>25 28 30 35</td>
                    <td>2509 2000 1742 1280</td>
                    <td>59 74 85 115</td>
                    <td>54 67 77 105</td>
                    <td>1,9 2,3 2,7 3,7</td>
                    <td>36 45 52 71</td>
                    <td>120</td>
                    <td>0-190</td>
                    <td>3</td>
                    <td>20</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>45</td>
                    <td>8,3</td>
                    <td>580*430</td>
                    <td>400*250</td>
                    <td>150/210</td>
                    <td>200</td>
                    <td>350/410</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>120</td>
                    <td>140</td>
                    <td>41</td>
                    <td>130</td>
                    <td>600-800</td>
                    <td>5,5</td>
                    <td>3,5</td>
                    <td>9</td>
                    <td>1,5</td>
                    <td>1,7*1,35*2,15</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-450DM -->
              <li class="tab-content__item js-tab-content" data-tab="11">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                    <td>Кол-во зон нагрева</td>
                    <td>Объем загрузочного бункера, Т</td>
                  </tr>
                  <tr>
                    <td>25 28 30 35</td>
                    <td>2509 2000 1742 1280</td>
                    <td>59 74 85 115</td>
                    <td>54 67 77 105</td>
                    <td>1,9 2,3 2,7 3,7</td>
                    <td>36 45 52 71</td>
                    <td>120</td>
                    <td>0-190</td>
                    <td>3</td>
                    <td>20</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>45</td>
                    <td>8,3</td>
                    <td>580*430</td>
                    <td>400*250</td>
                    <td>150/210</td>
                    <td>200</td>
                    <td>350/410</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>130</td>
                    <td>140</td>
                    <td>41</td>
                    <td>130</td>
                    <td>600-800</td>
                    <td>5,5</td>
                    <td>3,5</td>
                    <td>9</td>
                    <td>1,6</td>
                    <td>1,7*1,35*2,15</td>
                  </tr>
                  </tbody>
                </table>
              </li>


              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JS-550 -->
              <li class="tab-content__item js-tab-content" data-tab="12">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>30 35 40</td>
                    <td>2170 1594 1220</td>
                    <td>99 135 176</td>
                    <td>90 123 160</td>
                    <td>3,2 4,3 5,7</td>
                    <td>51 69 90</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>13,5</td>
                    <td>650*490</td>
                    <td>500*340</td>
                    <td>200/260</td>
                    <td>200</td>
                    <td>400/460</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>47</td>
                    <td>150</td>
                    <td>-</td>
                    <td>7,5</td>
                    <td>4,5</td>
                    <td>-</td>
                    <td>2,1</td>
                    <td>1,8*1,45*2,65</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-550D -->
              <li class="tab-content__item js-tab-content" data-tab="13">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>30 35 40</td>
                    <td>2170 1594 1220</td>
                    <td>99 135 176</td>
                    <td>90 123 160</td>
                    <td>3,2 4,3 5,7</td>
                    <td>51 69 90</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>13,5</td>
                    <td>650*490</td>
                    <td>500*340</td>
                    <td>200/260</td>
                    <td>200</td>
                    <td>400/46</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>-</td>
                    <td>140</td>
                    <td>47</td>
                    <td>150</td>
                    <td>-</td>
                    <td>7,5</td>
                    <td>4,5</td>
                    <td>-</td>
                    <td>2,3</td>
                    <td>1,8*1,45*2,65</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-550DM -->
              <li class="tab-content__item js-tab-content" data-tab="14">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>30 35 40</td>
                    <td>2170 1594 1220</td>
                    <td>99 135 176</td>
                    <td>90 123 160</td>
                    <td>3,2 4,3 5,7</td>
                    <td>51 69 90</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>13,5</td>
                    <td>650*490</td>
                    <td>500*340</td>
                    <td>200/260</td>
                    <td>200</td>
                    <td>400/460</td>
                    <td>2,1</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>&nbsp;-</td>
                    <td>140</td>
                    <td>47</td>
                    <td>150</td>
                    <td>&nbsp;-</td>
                    <td>7,5</td>
                    <td>4,5</td>
                    <td>&nbsp;-</td>
                    <td>2,5</td>
                    <td>1,8*1,45*2,65</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JS-850 -->
              <li class="tab-content__item js-tab-content" data-tab="15">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45 50</td>
                    <td>2171 1663 1314 1064</td>
                    <td>135 176 223 275</td>
                    <td>123 160 203 250</td>
                    <td>4,3 5,7 7,2 8,9</td>
                    <td>82 107 135 167</td>
                    <td>140</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>10,5</td>
                    <td>740*500</td>
                    <td>560*320</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>3,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>76</td>
                    <td>180</td>
                    <td>-</td>
                    <td>11</td>
                    <td>5,6</td>
                    <td>-</td>
                    <td>4,5</td>
                    <td>2,0*1,7*3,2</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-850D -->
              <li class="tab-content__item js-tab-content" data-tab="16">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45 50</td>
                    <td>2171 1663 1314 1064</td>
                    <td>135 176 223 275</td>
                    <td>123 160 203 250</td>
                    <td>4,3 5,7 7,2 8,9</td>
                    <td>82 107 135 167</td>
                    <td>140</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>10,5</td>
                    <td>740*500</td>
                    <td>560*320</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>3,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>76</td>
                    <td>180</td>
                    <td>-</td>
                    <td>11</td>
                    <td>5,6</td>
                    <td>-</td>
                    <td>4,8</td>
                    <td>2,0*1,7*3,2</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-850DM -->
              <li class="tab-content__item js-tab-content" data-tab="17">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45 50</td>
                    <td>2171 1663 1314 1064</td>
                    <td>135 176 223 275</td>
                    <td>123 160 203 250</td>
                    <td>4,3 5,7 7,2 8,9</td>
                    <td>82 107 135 167</td>
                    <td>140</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>10,5</td>
                    <td>740*500</td>
                    <td>560*320</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>3,5</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>76</td>
                    <td>180</td>
                    <td>-</td>
                    <td>11</td>
                    <td>5,6</td>
                    <td>-</td>
                    <td>5</td>
                    <td>2,0*1,7*3,2</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JS-1200 -->
              <li class="tab-content__item js-tab-content" data-tab="18">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45 50</td>
                    <td>2577 1973 1559 1263</td>
                    <td>173 226 286 353</td>
                    <td>158 206 261 321</td>
                    <td>5,6 7,3 9,3 11,3</td>
                    <td>87 114 144 177</td>
                    <td>180</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>120</td>
                    <td>15</td>
                    <td>840*500</td>
                    <td>620*280</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>3,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Макс. Масса пресс-формы, кг2</td>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>-</td>
                    <td>140</td>
                    <td>96</td>
                    <td>200</td>
                    <td>-</td>
                    <td>14,7</td>
                    <td>7,5</td>
                    <td>-</td>
                    <td>4,9</td>
                    <td>2,4*1,6*3,3</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-1200D -->
              <li class="tab-content__item js-tab-content" data-tab="19">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45 50</td>
                    <td>2577 1973 1559 1263</td>
                    <td>173 226 286 353</td>
                    <td>158 206 261 321</td>
                    <td>5,6 7,3 9,3 11,3</td>
                    <td>87 114 144 177</td>
                    <td>180</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>120</td>
                    <td>15</td>
                    <td>840*500</td>
                    <td>620*280</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>3,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>96</td>
                    <td>200</td>
                    <td>-</td>
                    <td>14,7</td>
                    <td>7,5</td>
                    <td>-</td>
                    <td>5,2</td>
                    <td>2,4*1,6*3,3</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-1200DM -->
              <li class="tab-content__item js-tab-content" data-tab="20">
                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45 50</td>
                    <td>2577 1973 1559 1263</td>
                    <td>173 226 286 353</td>
                    <td>158 206 261 321</td>
                    <td>5,6 7,3 9,3 11,3</td>
                    <td>87 114 144 177</td>
                    <td>180</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>120</td>
                    <td>15</td>
                    <td>840*500</td>
                    <td>620*280</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>3,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Потребление воды для охлаждения, л/ч</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Общая мощность, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>96</td>
                    <td>200</td>
                    <td>-</td>
                    <td>14,7</td>
                    <td>7,5</td>
                    <td>-</td>
                    <td>5,2</td>
                    <td>2,4*1,6*3,3</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JS-450R -->
              <li class="tab-content__item js-tab-content" data-tab="21">
                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>25 28 30 35</td>
                    <td>2509 2000 1742 1280</td>
                    <td>59 74 85 115</td>
                    <td>54 67 77 105</td>
                    <td>1,9 2,3 2,7 3,7</td>
                    <td>36 45 52 71</td>
                    <td>120</td>
                    <td>0-190</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>45</td>
                    <td>8,3</td>
                    <td>580*430</td>
                    <td>740</td>
                    <td>150/210</td>
                    <td>200</td>
                    <td>350/410</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>43</td>
                    <td>130</td>
                    <td>7,5</td>
                    <td>3,5</td>
                    <td>2,6</td>
                    <td>1,98*1,48*3,08</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-550R -->
              <li class="tab-content__item js-tab-content" data-tab="22">
                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>30 35 40</td>
                    <td>2170 1594 1220</td>
                    <td>99 135 176</td>
                    <td>90 123 160</td>
                    <td>3,2 4,3 5,7</td>
                    <td>51 69 90</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>13,5</td>
                    <td>880</td>
                    <td>-</td>
                    <td>200/260</td>
                    <td>200</td>
                    <td>400/460</td>
                    <td>1,3</td>
                    <td>45</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>56</td>
                    <td>150</td>
                    <td>11</td>
                    <td>4,5</td>
                    <td>2,8</td>
                    <td>2,4*1,89*3,33</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-850R -->
              <li class="tab-content__item js-tab-content" data-tab="23">
                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>35 40 45</td>
                    <td>2330 1785 1410</td>
                    <td>183 239 302</td>
                    <td>165 215 272</td>
                    <td>-</td>
                    <td>71 93 119</td>
                    <td>190</td>
                    <td>0-197</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Размер плит, мм</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>10,5</td>
                    <td>1180</td>
                    <td>-</td>
                    <td>250/310</td>
                    <td>250</td>
                    <td>500/560</td>
                    <td>2,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Габариты пресс-формы, мм</td>
                  </tr>
                  <tr>
                    <td>15</td>
                    <td>8,4</td>
                    <td>3,6</td>
                    <td>2,8*1,9*2,85</td>
                    <td>415*500</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JS-1200R -->
              <li class="tab-content__item js-tab-content" data-tab="24">
                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>40 45 50</td>
                    <td>1973 1559 1263</td>
                    <td>226 286 353</td>
                    <td>206 261 321</td>
                    <td>7,3 9,3 11,3</td>
                    <td>114 144 177</td>
                    <td>180</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>120</td>
                    <td>15</td>
                    <td>1200</td>
                    <td>250/200</td>
                    <td>250</td>
                    <td>500/450</td>
                    <td>4,8</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Потребление воды, Л/час</td>
                    <td>Суммарная мощность, кВт</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>114-19</td>
                    <td>200</td>
                    <td>18,4</td>
                    <td>7,5</td>
                    <td>7,5</td>
                    <td>3,2*2,0*3,33</td>
                    <td>25,9</td>
                    <td>1500-1800</td>
                  </tr>
                  </tbody>
                </table>
              </li>
            </ul>
          </div>';

-- Вертикальные термопластавтоматы для тонкостенного литья
INSERT INTO products
SET title = 'Вертикальные термопластавтоматы для тонкостенного литья',
    image_path ='/img/catalog/vertTPA2.jpg',
    big_image_path ='',
    category_id = '1',
    small_desc = 'Тонкостенное литье — это специализированная форма обычного литья под давлением, которая фокусируется на массовом производстве пластиковых деталей,
                  которые являются тонкими и легкими.',
    content = '          <p>Выберите серию: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">JC-550</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">JC-550DM</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">JC-550R</li>

              <li class="tab-header__item js-tab-trigger" data-tab="4">JC-850</li>
              <li class="tab-header__item js-tab-trigger" data-tab="5">JC-850DM</li>
              <li class="tab-header__item js-tab-trigger" data-tab="6">JC-850R</li>
            </ul>


            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JC550 -->
              <li class="tab-content__item js-tab-content active" data-tab="1">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>32 38 42</td>
                    <td>2050 1454 1190</td>
                    <td>113 158 194</td>
                    <td>103 144 177</td>
                    <td>3,6 5,1 6,2</td>
                    <td>48 68 83</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>8,3</td>
                    <td>420*270</td>
                    <td>175</td>
                    <td>200</td>
                    <td>375</td>
                    <td>1,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>47</td>
                    <td>200</td>
                    <td>7,5</td>
                    <td>5,5</td>
                    <td>3,1</td>
                    <td>2,8*1,05*2,05</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JC550DM -->
              <li class="tab-content__item js-tab-content" data-tab="2">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>32 38 42</td>
                    <td>2050 1454 1190</td>
                    <td>113 158 194</td>
                    <td>103 144 177</td>
                    <td>3,6 5,1 6,2</td>
                    <td>48 68 83</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>8,3</td>
                    <td>420*270</td>
                    <td>175</td>
                    <td>200</td>
                    <td>375</td>
                    <td>1,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>47</td>
                    <td>200</td>
                    <td>7,5</td>
                    <td>5,5</td>
                    <td>3,5</td>
                    <td>2,8*1,05*2,05</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JC550R -->
              <li class="tab-content__item js-tab-content" data-tab="3">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>32 38 42</td>
                    <td>2050 1454 1190</td>
                    <td>113 158 194</td>
                    <td>103 144 177</td>
                    <td>3,6 5,1 6,2</td>
                    <td>48 68 83</td>
                    <td>140</td>
                    <td>0-175</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>55</td>
                    <td>8,3</td>
                    <td>420*270</td>
                    <td>175</td>
                    <td>200</td>
                    <td>375</td>
                    <td>1,3</td>
                    <td>75</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стола,мм</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>47</td>
                    <td>200</td>
                    <td>11</td>
                    <td>5,5</td>
                    <td>3,8</td>
                    <td>3,5*1,65*2,15</td>
                    <td>860</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- JC-850 -->
              <li class="tab-content__item js-tab-content" data-tab="4">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>38 42 45</td>
                    <td>1745 1429 1244</td>
                    <td>191 233 267</td>
                    <td>173 212 243</td>
                    <td>6,1 7,5 8,6</td>
                    <td>87106122</td>
                    <td>168</td>
                    <td>0-160</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>13</td>
                    <td>460*330</td>
                    <td>210</td>
                    <td>270</td>
                    <td>480</td>
                    <td>2,5</td>
                    <td>85</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>65</td>
                    <td>300</td>
                    <td>11</td>
                    <td>7,5</td>
                    <td>5,89</td>
                    <td>3,3*1,15*2,65</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JC-850DM -->
              <li class="tab-content__item js-tab-content" data-tab="5">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>38 42 45</td>
                    <td>1745 1429 1244</td>
                    <td>191 233 267</td>
                    <td>173 212 243</td>
                    <td>6,1 7,5 8,6</td>
                    <td>87 106 122</td>
                    <td>168</td>
                    <td>0-160</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>13</td>
                    <td>460*330</td>
                    <td>210</td>
                    <td>270</td>
                    <td>480</td>
                    <td>2,5</td>
                    <td>85</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>65</td>
                    <td>300</td>
                    <td>11</td>
                    <td>7,5</td>
                    <td>6,5</td>
                    <td>3,3*1,15*2,65</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- JC-850R -->
              <li class="tab-content__item js-tab-content" data-tab="6">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см3</td>
                    <td>Объём впрыска, см4</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин</td>
                  </tr>
                  <tr>
                    <td>38 42 45</td>
                    <td>1745 1429 1244</td>
                    <td>191 233 267</td>
                    <td>173 212 243</td>
                    <td>6,1 7,5 8,6</td>
                    <td>87 106 122</td>
                    <td>168</td>
                    <td>0-160</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, Т</td>
                    <td>Усилие открытия, Т</td>
                    <td>Расстояние между колонами, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальное раскрытие, мм</td>
                    <td>Усилие выталкивателя, Т</td>
                    <td>Ход выталкивателя, мм</td>
                  </tr>
                  <tr>
                    <td>85</td>
                    <td>13</td>
                    <td>460*330</td>
                    <td>210</td>
                    <td>270</td>
                    <td>480</td>
                    <td>2,5</td>
                    <td>80</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Максимальное гидравлическое давление, кг/см3</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева цилиндра, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стола,мм</td>
                  </tr>
                  <tr>
                    <td>140</td>
                    <td>65</td>
                    <td>300</td>
                    <td>14,7</td>
                    <td>7,5</td>
                    <td>7,2</td>
                    <td>3,9*1,8*2,7</td>
                    <td>860</td>
                  </tr>
                  </tbody>
                </table>
              </li>

            </ul>
          </div>';

-- Серия ТПА с сервоприводом
INSERT INTO products
SET title = 'Серия ТПА с сервоприводом',
    image_path ='/img/catalog/prod1.png',
    big_image_path ='',
    category_id = '1',
    small_desc = '',
    content = '          <p>Выберите серию: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">Chrome 58GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">Chrome 88GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">Chrome 128GL</li>

              <li class="tab-header__item js-tab-trigger" data-tab="4">Chrome 160GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="5">Chrome 220GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="6">Chrome 260GL</li>

              <li class="tab-header__item js-tab-trigger" data-tab="7">Chrome 320GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="8">Chrome 380GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="9">Chrome 470GL</li>

              <li class="tab-header__item js-tab-trigger" data-tab="10">Chrome 570GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="11">Chrome 650GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="12">Chrome 800GL</li>


              <li class="tab-header__item js-tab-trigger" data-tab="13">Chrome 1000GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="14">Chrome 1300GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="15">Chrome 1600GL</li>

              <li class="tab-header__item js-tab-trigger" data-tab="16">Chrome 2100GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="17">Chrome 2800GL</li>
              <li class="tab-header__item js-tab-trigger" data-tab="18">Chrome 3300GL</li>

            </ul>


            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- Chrome 58GL -->
              <li class="tab-content__item js-tab-content active" data-tab="1">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска ,МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>26 30 34</td>
                    <td>24:1 21:1 19:1</td>
                    <td>66 88 113</td>
                    <td>60 80 103</td>
                    <td>245 184 143</td>
                    <td>120</td>
                    <td>125</td>
                    <td>0-220</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей, шт</td>
                  </tr>
                  <tr>
                    <td>580</td>
                    <td>270</td>
                    <td>310*310</td>
                    <td>480*470</td>
                    <td>320</td>
                    <td>120</td>
                    <td>70</td>
                    <td>22</td>
                    <td>1</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>8,6</td>
                    <td>11</td>
                    <td>160</td>
                    <td>7,1</td>
                    <td>4</td>
                    <td>2,1</td>
                    <td>3,9*1,04*1,78</td>
                    <td>2500</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 88GL -->
              <li class="tab-content__item js-tab-content" data-tab="2">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска ,МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>35 37 40</td>
                    <td>20,6:1 19,5:1 18:1</td>
                    <td>125 135 158</td>
                    <td>109 122 142</td>
                    <td>193 173 148</td>
                    <td>93</td>
                    <td>126</td>
                    <td>0-220</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей, шт</td>
                  </tr>
                  <tr>
                    <td>880</td>
                    <td>320</td>
                    <td>365*365</td>
                    <td>545*545</td>
                    <td>380</td>
                    <td>150</td>
                    <td>100</td>
                    <td>27,5</td>
                    <td>3</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>18,2</td>
                    <td>15</td>
                    <td>200</td>
                    <td>7,9</td>
                    <td>4</td>
                    <td>2,1</td>
                    <td>4,05*1,14*1,94</td>
                    <td>3500</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 128GL -->
              <li class="tab-content__item js-tab-content" data-tab="3">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска ,МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>37 40 43</td>
                    <td>21:1 19,6:1 18,2:1</td>
                    <td>183 214 247</td>
                    <td>164 192 222</td>
                    <td>196 168 145</td>
                    <td>99</td>
                    <td>170</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей, шт</td>
                  </tr>
                  <tr>
                    <td>1280</td>
                    <td>365</td>
                    <td>412*412</td>
                    <td>615*615</td>
                    <td>450</td>
                    <td>160</td>
                    <td>130</td>
                    <td>39,6</td>
                    <td>5</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>18,2</td>
                    <td>15</td>
                    <td>250</td>
                    <td>9,5</td>
                    <td>4</td>
                    <td>1,95</td>
                    <td>4,5*1,2*2,0</td>
                    <td>4350</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- Chrome 160GL -->
              <li class="tab-content__item js-tab-content" data-tab="4">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска ,МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>40 45 48</td>
                    <td>22,5:1 20:1 18:1</td>
                    <td>270 342 389</td>
                    <td>243 308 350</td>
                    <td>215 169 149</td>
                    <td>103</td>
                    <td>215</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей, шт</td>
                  </tr>
                  <tr>
                    <td>1600</td>
                    <td>445</td>
                    <td>470*470</td>
                    <td>691*691</td>
                    <td>520</td>
                    <td>180</td>
                    <td>140</td>
                    <td>39,6</td>
                    <td>5</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>18,2</td>
                    <td>22</td>
                    <td>300</td>
                    <td>14</td>
                    <td>5</td>
                    <td>2,25</td>
                    <td>4,9*1,27*2,16</td>
                    <td>5650</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 220GL -->
              <li class="tab-content__item js-tab-content" data-tab="5">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска ,МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>45 50 55</td>
                    <td>22,2:01 20:01 18,2:01</td>
                    <td>350 432 522</td>
                    <td>315 389 470</td>
                    <td>210 170 141</td>
                    <td>96</td>
                    <td>220</td>
                    <td>0-200</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей, шт</td>
                  </tr>
                  <tr>
                    <td>2200</td>
                    <td>495</td>
                    <td>530*530</td>
                    <td>791*791</td>
                    <td>560</td>
                    <td>200</td>
                    <td>140</td>
                    <td>62</td>
                    <td>9</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>23</td>
                    <td>22</td>
                    <td>360</td>
                    <td>16,25</td>
                    <td>5</td>
                    <td>2,6</td>
                    <td>5,5*1,32*2,24</td>
                    <td>7100</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 260GL -->
              <li class="tab-content__item js-tab-content" data-tab="6">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска ,МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>50 55 60</td>
                    <td>22,5:1 20,5:1 18,8:1</td>
                    <td>491 594 707</td>
                    <td>442 534 636</td>
                    <td>205 169 142</td>
                    <td>91</td>
                    <td>250</td>
                    <td>0-180</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей, шт</td>
                  </tr>
                  <tr>
                    <td>2600</td>
                    <td>540</td>
                    <td>580*580</td>
                    <td>860*860</td>
                    <td>610</td>
                    <td>220</td>
                    <td>150</td>
                    <td>62</td>
                    <td>9</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>29</td>
                    <td>30</td>
                    <td>405</td>
                    <td>17,3</td>
                    <td>5</td>
                    <td>3,1</td>
                    <td>5,92*1,4*2,32</td>
                    <td>8500</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- Chrome 320GL -->
              <li class="tab-content__item js-tab-content" data-tab="7">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>60 65 70</td>
                    <td>21,7:1 20:1 18,6:1</td>
                    <td>735 862 1000</td>
                    <td>661 776 900</td>
                    <td>219 187 161</td>
                    <td>86</td>
                    <td>&nbsp;-</td>
                    <td>260</td>
                    <td>0-180</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>3200</td>
                    <td>640</td>
                    <td>685*685</td>
                    <td>990*990</td>
                    <td>690</td>
                    <td>250</td>
                    <td>160</td>
                    <td>70</td>
                    <td>13</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>39,4</td>
                    <td>45</td>
                    <td>600</td>
                    <td>24,2</td>
                    <td>5</td>
                    <td>3,6</td>
                    <td>6,88*1,77*2,43</td>
                    <td>13200</td>
                    <td>6,88*1,77*2,43</td>
                    <td>13200</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 380GL -->
              <li class="tab-content__item js-tab-content" data-tab="8">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>65 70 75</td>
                    <td>22,4:1 20,6:1 19,2:1</td>
                    <td>1094 1269 1457</td>
                    <td>985 1142 1311</td>
                    <td>208 180 156</td>
                    <td>92</td>
                    <td>-</td>
                    <td>330</td>
                    <td>0-180</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>3800</td>
                    <td>700</td>
                    <td>726*726</td>
                    <td>1036*1040</td>
                    <td>760</td>
                    <td>250</td>
                    <td>180</td>
                    <td>110</td>
                    <td>13</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>39,4</td>
                    <td>55</td>
                    <td>700</td>
                    <td>26</td>
                    <td>5</td>
                    <td>3,3</td>
                    <td>7,36*1,88*2,62</td>
                    <td>15000</td>
                    <td>7,36*1,88*2,62</td>
                    <td>15000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 470GL -->
              <li class="tab-content__item js-tab-content" data-tab="9">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>75 80 84</td>
                    <td>21,4:1 20:01 19:1</td>
                    <td>1722 1959 2160</td>
                    <td>1550 1763 1944</td>
                    <td>177 156 141</td>
                    <td>96</td>
                    <td>-</td>
                    <td>390</td>
                    <td>0-160</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>4700</td>
                    <td>780</td>
                    <td>820*800</td>
                    <td>1210*1180</td>
                    <td>830</td>
                    <td>300</td>
                    <td>200</td>
                    <td>120</td>
                    <td>17</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>23+29</td>
                    <td>22+30</td>
                    <td>800</td>
                    <td>32,5</td>
                    <td>6</td>
                    <td>3,1</td>
                    <td>7,92*1,97*2,69</td>
                    <td>19000</td>
                    <td>7,92*1,97*2,69</td>
                    <td>19000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- Chrome 570GL -->
              <li class="tab-content__item js-tab-content" data-tab="10">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>75 84 90 100</td>
                    <td>23,6:1 21,1:1 19,7:1 17,7:1</td>
                    <td>1987 2492 2861 3532</td>
                    <td>1788 2242 2575 3179</td>
                    <td>205 163 142 115</td>
                    <td>90</td>
                    <td>-</td>
                    <td>450</td>
                    <td>0-110</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>5700</td>
                    <td>850</td>
                    <td>835*835</td>
                    <td>1240*1250</td>
                    <td>920</td>
                    <td>350</td>
                    <td>250</td>
                    <td>158</td>
                    <td>17</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>29+29</td>
                    <td>30+30</td>
                    <td>1000</td>
                    <td>39,6</td>
                    <td>7</td>
                    <td>3,6</td>
                    <td>8,82*2,32*2,80</td>
                    <td>27000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 650GL -->
              <li class="tab-content__item js-tab-content" data-tab="11">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>80 90 100 110</td>
                    <td>24,8:1 22:01 19,8:1 18:01</td>
                    <td>2261 2861 3533 4274</td>
                    <td>2035 2575 3179 3847</td>
                    <td>224 177 143 118</td>
                    <td>95</td>
                    <td>-</td>
                    <td>450</td>
                    <td>0-110</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>6500</td>
                    <td>900</td>
                    <td>900*900</td>
                    <td>1350*1400</td>
                    <td>900</td>
                    <td>400</td>
                    <td>260</td>
                    <td>186</td>
                    <td>17</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>29+39,4</td>
                    <td>30+55</td>
                    <td>1200</td>
                    <td>50,9</td>
                    <td>7</td>
                    <td>3,3</td>
                    <td>9,9*2,45*2,8</td>
                    <td>32000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 800GL -->
              <li class="tab-content__item js-tab-content" data-tab="12">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека (плавная), об/мин</td>
                  </tr>
                  <tr>
                    <td>90100110120</td>
                    <td>24,5:1 22:01 20:01 18,3:1</td>
                    <td>2925 3611 4369 5200</td>
                    <td>2632 3250 3932 4680</td>
                    <td>228 184 152 128</td>
                    <td>88</td>
                    <td>-</td>
                    <td>460</td>
                    <td>0-110</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>8000</td>
                    <td>1040</td>
                    <td>1000*1000</td>
                    <td>1465*1480</td>
                    <td>1030</td>
                    <td>400</td>
                    <td>280</td>
                    <td>186</td>
                    <td>21</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>39,4+39,4</td>
                    <td>55+55</td>
                    <td>1500</td>
                    <td>56,1</td>
                    <td>3,3</td>
                    <td>11,05*2,65*3,80</td>
                    <td>40000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- Chrome 1000GL -->
              <li class="tab-content__item js-tab-content" data-tab="13">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                  </tr>
                  <tr>
                    <td>100110120130</td>
                    <td>24,3:1 22,1:1 20,2:1 18,7:1</td>
                    <td>4004 4844 5765 6766</td>
                    <td>3603 4360 5189 6089</td>
                    <td>211 174 146 125</td>
                    <td>91</td>
                    <td>510</td>
                    <td>0-107</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>10000</td>
                    <td>1200</td>
                    <td>1120*1120</td>
                    <td>1680*1780</td>
                    <td>1200</td>
                    <td>500</td>
                    <td>320</td>
                    <td>215</td>
                    <td>21</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>38,4+29+29</td>
                    <td>55+30+30</td>
                    <td>1 900</td>
                    <td>79,35</td>
                    <td>5,78</td>
                    <td>12,0*3,0*3,3</td>
                    <td>55 000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 1300GL -->
              <li class="tab-content__item js-tab-content" data-tab="14">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                  </tr>
                  <tr>
                    <td>110120130140</td>
                    <td>26,2:1 24,1:1 22,4:1 20,9:1</td>
                    <td>5224 6217 7297 8462</td>
                    <td>4702 5595 6567 7616</td>
                    <td>205 172 147 126</td>
                    <td>84</td>
                    <td>550</td>
                    <td>0-91</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>13000</td>
                    <td>1400</td>
                    <td>1350*1280</td>
                    <td>1934*1896</td>
                    <td>1400</td>
                    <td>550</td>
                    <td>350</td>
                    <td>215</td>
                    <td>25</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>29+39,4+39,4</td>
                    <td>30+55+55</td>
                    <td>2 400</td>
                    <td>84,95</td>
                    <td>-</td>
                    <td>7,4</td>
                    <td>13,2*3,1*3,6</td>
                    <td>67 000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 1600GL -->
              <li class="tab-content__item js-tab-content" data-tab="15">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                  </tr>
                  <tr>
                    <td>120130140150</td>
                    <td>26,1:1 24:1 22,4:1 20,9:1</td>
                    <td>6669 7827 9078 10421</td>
                    <td>6002 7045 8170 9379</td>
                    <td>193 164 142 123</td>
                    <td>104</td>
                    <td>590</td>
                    <td>0-99</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>16000</td>
                    <td>1600</td>
                    <td>1500*1415</td>
                    <td>2180*2180</td>
                    <td>1500</td>
                    <td>700</td>
                    <td>350</td>
                    <td>318</td>
                    <td>29</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>29+39,4*3</td>
                    <td>30+55*3</td>
                    <td>2800</td>
                    <td>101,85</td>
                    <td>-</td>
                    <td>6,4</td>
                    <td>13,85*3,43*4,20</td>
                    <td>105000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- Chrome 2100GL -->
              <li class="tab-content__item js-tab-content" data-tab="16">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                  </tr>
                  <tr>
                    <td>140 150 160</td>
                    <td>22,4:1 20,9:1 19,6:1</td>
                    <td>11084 12723 14476</td>
                    <td>10086 11578 13174</td>
                    <td>163 142 125</td>
                    <td>95</td>
                    <td>720</td>
                    <td>0-80</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>21000</td>
                    <td>1800</td>
                    <td>1750*1600</td>
                    <td>2480*2380</td>
                    <td>1700</td>
                    <td>780</td>
                    <td>400</td>
                    <td>430</td>
                    <td>29</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>14</td>
                    <td>39,4*4</td>
                    <td>55*4</td>
                    <td>3000</td>
                    <td>114,05</td>
                    <td>-</td>
                    <td>8,5</td>
                    <td>16,0*3,6*4,8</td>
                    <td>139000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 2800GL -->
              <li class="tab-content__item js-tab-content" data-tab="17">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                  </tr>
                  <tr>
                    <td>170 200 215</td>
                    <td>23,5:1 20:1 21:1</td>
                    <td>19293 35154 43530</td>
                    <td>17557 31990 39612</td>
                    <td>161 137 135</td>
                    <td>86,2 73,5 64,3</td>
                    <td>850 1120 1200</td>
                    <td>0-65 0-60 0-50</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>28 000</td>
                    <td>2000</td>
                    <td>1900*1750</td>
                    <td>2735*2685</td>
                    <td>1900</td>
                    <td>1000</td>
                    <td>450</td>
                    <td>430</td>
                    <td>29</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>16</td>
                    <td>55*3 45+55*3 55*4</td>
                    <td>-</td>
                    <td>4000</td>
                    <td>170170188</td>
                    <td>-</td>
                    <td>-</td>
                    <td>19*4*5,5</td>
                    <td>192000 197000 209000</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- Chrome 3300GL -->
              <li class="tab-content__item js-tab-content" data-tab="18">

                <!--  Узел впрыска -->
                <h3 class="spec-title">Узел впрыска</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Соотношение длины шнека к диаметру</td>
                    <td>Объём впрыска, см3</td>
                    <td>Масса впрыска, г</td>
                    <td>Давление впрыска, МПа</td>
                    <td>Линейная скорость, мм/с</td>
                    <td>Скорость пластификации, кг/ч</td>
                    <td>Ход шнека, мм</td>
                  </tr>
                  <tr>
                    <td>215</td>
                    <td>21:1</td>
                    <td>43530</td>
                    <td>39612</td>
                    <td>135</td>
                    <td>64,3</td>
                    <td>1200</td>
                    <td>0-50</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Узел смыкания -->
                <h3 class="spec-title">Узел смыкания</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Длина хода подвижной плиты, мм</td>
                    <td>Расстояние между колоннами, мм x мм</td>
                    <td>Размер плит, мм x мм</td>
                    <td>Макс. монтажная высота пресс-формы, мм</td>
                    <td>Мин. монтажная высота пресс-формы, мм</td>
                    <td>Ход выталкивания, мм</td>
                    <td>Усилие выталкивания, кН</td>
                    <td>Количество толкателей</td>
                  </tr>
                  <tr>
                    <td>33000</td>
                    <td>2150</td>
                    <td>2160*1900</td>
                    <td>3100*3005</td>
                    <td>1900</td>
                    <td>1000</td>
                    <td>500</td>
                    <td>550</td>
                    <td>25</td>
                  </tr>
                  </tbody>
                </table>
                <!--  Общее  -->
                <h3 class="spec-title">Общее</h3>
                <table>
                  <tbody>
                  <tr>
                    <td>Давление насос-мотора, Мпа</td>
                    <td>Мощность сервонасоса, кВт</td>
                    <td>Мощность серводрайвера, кВт</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Кол-во зон нагрева, кВт</td>
                    <td>Время сухого цикла, с</td>
                    <td>Габариты (Д x Ш x В), м x м x м</td>
                    <td>Масса машины, кг</td>
                  </tr>
                  <tr>
                    <td>16</td>
                    <td>55*4</td>
                    <td>-</td>
                    <td>4700</td>
                    <td>188</td>
                    <td>-</td>
                    <td>-</td>
                    <td>22*4,5*5,7</td>
                    <td>250000</td>
                  </tr>
                  </tbody>
                </table>
              </li>
            </ul>
          </div>';


-- ЛИТЬЕ МЕТАЛЛОВ
INSERT INTO products
SET title = 'Машины для литья цветных металлов под давлением (холодная камера)',
    image_path ='/img/catalog/lanson.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content ='          <p>Выберите серию: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">TD218</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">LS300</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">LS400</li>
              <li class="tab-header__item js-tab-trigger" data-tab="4">TD518</li>

                <li class="tab-header__item js-tab-trigger" data-tab="5">LS650</li>
                <li class="tab-header__item js-tab-trigger" data-tab="6">LS800</li>
                <li class="tab-header__item js-tab-trigger" data-tab="7">LS1000</li>
                <li class="tab-header__item js-tab-trigger" data-tab="8">LS1300</li>

                <li class="tab-header__item js-tab-trigger" data-tab="9">LS1650</li>
                <li class="tab-header__item js-tab-trigger" data-tab="10">LS2000</li>
                <li class="tab-header__item js-tab-trigger" data-tab="11">LS2500</li>
            </ul>


            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- TD218 -->
              <li class="tab-content__item js-tab-content active" data-tab="1">
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Размер плиты, мм</td>
                    <td>Расстояние между колоннами, мм</td>
                    <td>Усилие заливки&nbsp;, кН</td>
                    <td>Диаметр поршня, мм</td>
                  </tr>
                  <tr>
                    <td>2180</td>
                    <td>800*800</td>
                    <td>510*510</td>
                    <td>300</td>
                    <td>50/60/70</td>
                  </tr>
                  </tbody>
                </table>
                <table>
                  <tbody>
                  <tr>
                    <td>Доза жидкого металла AL кг</td>
                    <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                    <td>Мощность мотора, кВт</td>
                    <td>Объем масляного бака, л</td>
                    <td>Примерная масса машины, кг</td>
                    <td>Габариты машины д*ш*в, мм</td>
                  </tr>
                  <tr>
                    <td>1,6/1,96/2,66</td>
                    <td>545</td>
                    <td>15</td>
                    <td>500</td>
                    <td>9500</td>
                    <td>5958*1745*2555</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!--LS300 -->
              <li class="tab-content__item js-tab-content" data-tab="2">
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Размер плиты, мм</td>
                    <td>Расстояние между колоннами, мм</td>
                    <td>Усилие заливки&nbsp;, кН</td>
                    <td>Диаметр поршня, мм</td>
                  </tr>
                  <tr>
                    <td>3000</td>
                    <td>870*870</td>
                    <td>570*570</td>
                    <td>330</td>
                    <td>50/60/70</td>
                  </tr>
                  </tbody>
                </table>
                <table>
                  <tbody>
                  <tr>
                    <td>Доза жидкого металла AL кг</td>
                    <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                    <td>Мощность мотора, кВт</td>
                    <td>Объем масляного бака, л</td>
                    <td>Примерная масса машины, кг</td>
                    <td>Габариты машины д*ш*в, мм</td>
                  </tr>
                  <tr>
                    <td>1,5/2,1/2,9</td>
                    <td>750</td>
                    <td>22</td>
                    <td>600</td>
                    <td>10500</td>
                    <td>6600*1700*2620</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- LS400 -->
              <li class="tab-content__item js-tab-content" data-tab="3">
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Размер плиты, мм</td>
                    <td>Расстояние между колоннами, мм</td>
                    <td>Усилие заливки&nbsp;, кН</td>
                    <td>Диаметр поршня, мм</td>
                  </tr>
                  <tr>
                    <td>4000</td>
                    <td>1010*1010</td>
                    <td>669*669</td>
                    <td>370</td>
                    <td>60/70/80</td>
                  </tr>
                  </tbody>
                </table>
                <table>
                  <tbody>
                  <tr>
                    <td>Доза жидкого металла AL кг</td>
                    <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                    <td>Мощность мотора, кВт</td>
                    <td>Объем масляного бака, л</td>
                    <td>Примерная масса машины, кг</td>
                    <td>Габариты машины д*ш*в, мм</td>
                  </tr>
                  <tr>
                    <td>2,7/3,7/4,8</td>
                    <td>1000</td>
                    <td>22</td>
                    <td>800</td>
                    <td>15000</td>
                    <td>7000*1840*2820</td>
                  </tr>
                  </tbody>
                </table>
              </li>

              <!-- TD518 -->
              <li class="tab-content__item js-tab-content" data-tab="4">
                <table>
                  <tbody>
                  <tr>
                    <td>Усилие смыкания, кН</td>
                    <td>Размер плиты, мм</td>
                    <td>Расстояние между колоннами, мм</td>
                    <td>Усилие заливки&nbsp;, кН</td>
                    <td>Диаметр поршня, мм</td>
                  </tr>
                  <tr>
                    <td>5180</td>
                    <td>1162*1162</td>
                    <td>760*760</td>
                    <td>450</td>
                    <td>70/80/90</td>
                  </tr>
                  </tbody>
                </table>
                <table>
                  <tbody>
                  <tr>
                    <td>Доза жидкого металла AL кг</td>
                    <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                    <td>Мощность мотора, кВт</td>
                    <td>Объем масляного бака, л</td>
                    <td>Примерная масса машины, кг</td>
                    <td>Габариты машины д*ш*в, мм</td>
                  </tr>
                  <tr>
                    <td>4,2/5,5/6,9</td>
                    <td>1295</td>
                    <td>22</td>
                    <td>800</td>
                    <td>23000</td>
                    <td>7680*2160*2640</td>
                  </tr>
                  </tbody>
                </table>
              </li>

            <!---------------------------------------------------------->
            <!---------------------------------------------------------->
            <!-- LS650 -->
            <li class="tab-content__item js-tab-content" data-tab="5">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>6500</td>
                        <td>1290*1290</td>
                        <td>850*850</td>
                        <td>600</td>
                        <td>70/80/90</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>4,6/6,1/7,7</td>
                        <td>1625</td>
                        <td>37</td>
                        <td>1000</td>
                        <td>28000</td>
                        <td>7800*2120*2960</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            <!-- LS800 -->
            <li class="tab-content__item js-tab-content" data-tab="6">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>8000</td>
                        <td>1420*1420</td>
                        <td>930*930</td>
                        <td>690</td>
                        <td>80/90/100</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>7,2/9,1/11,2</td>
                        <td>2000</td>
                        <td>45</td>
                        <td>1300</td>
                        <td>39500</td>
                        <td>8800*2250*3060</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            <!-- LS1000 -->
            <li class="tab-content__item js-tab-content" data-tab="7">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>10000</td>
                        <td>1620*1620</td>
                        <td>1030*1030</td>
                        <td>882</td>
                        <td>90-120</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>9,5-17,0</td>
                        <td>2500</td>
                        <td>55</td>
                        <td>1800</td>
                        <td>70000</td>
                        <td>9500*4300*3900</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            <!-- LS1300 -->
            <li class="tab-content__item js-tab-content" data-tab="8">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>13000</td>
                        <td>1760*1760</td>
                        <td>1100*1100</td>
                        <td>1100</td>
                        <td>100-140</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>13,4-26,3</td>
                        <td>3250</td>
                        <td>74</td>
                        <td>2000</td>
                        <td>80000</td>
                        <td>10900*4250*4500</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            <!---------------------------------------------------------->
            <!---------------------------------------------------------->
            <!-- LS1650 -->
            <li class="tab-content__item js-tab-content" data-tab="9">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>16500</td>
                        <td>2000*2000</td>
                        <td>1250*1250</td>
                        <td>1285</td>
                        <td>110-150</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>17,3-32,1</td>
                        <td>4125</td>
                        <td>90</td>
                        <td>3000</td>
                        <td>95000</td>
                        <td>10900*4500*4600</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            <!-- LS2000 -->
            <li class="tab-content__item js-tab-content" data-tab="10">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>20000</td>
                        <td>2150*2150</td>
                        <td>1350*1350</td>
                        <td>1510</td>
                        <td>120-160</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>22,3-39,6</td>
                        <td>5000</td>
                        <td>110</td>
                        <td>3300</td>
                        <td>120000</td>
                        <td>13000*4700*4700</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            <!-- LS2500 -->
            <li class="tab-content__item js-tab-content" data-tab="11">
                <table>
                    <tbody>
                    <tr>
                        <td>Усилие смыкания, кН</td>
                        <td>Размер плиты, мм</td>
                        <td>Расстояние между колоннами, мм</td>
                        <td>Усилие заливки&nbsp;, кН</td>
                        <td>Диаметр поршня, мм</td>
                    </tr>
                    <tr>
                        <td>25000</td>
                        <td>2350*2350</td>
                        <td>1500*1500</td>
                        <td>1750</td>
                        <td>140-180</td>
                    </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td>Доза жидкого металла AL кг</td>
                        <td>Макс.проекционная площадь отливки 40МПа, см2</td>
                        <td>Мощность мотора, кВт</td>
                        <td>Объем масляного бака, л</td>
                        <td>Примерная масса машины, кг</td>
                        <td>Габариты машины д*ш*в, мм</td>
                    </tr>
                    <tr>
                        <td>31,7-52,5</td>
                        <td>6250</td>
                        <td>135</td>
                        <td>3500</td>
                        <td>160000</td>
                        <td>14000*5000*5000</td>
                    </tr>
                    </tbody>
                </table>
            </li>

            </ul>
          </div>';

INSERT INTO products
SET title = 'Машины для литья цветных металлов под давлением (горячая камера)',
    image_path ='/img/catalog/aliance.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content = '          <p>Выберите серию: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">ACM-50</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">ACG-88</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">ACG-130</li>
              <li class="tab-header__item js-tab-trigger" data-tab="4">ACG-168</li>
              <li class="tab-header__item js-tab-trigger" data-tab="5">ACM-268</li>
            </ul>

            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
              <!---------------------------------------------------------->
              <!---------------------------------------------------------->
              <!-- ACM-50 -->
              <li class="tab-content__item js-tab-content active" data-tab="1">
                  <table>
                      <tbody>
                      <tr>
                          <td>Усилие смыкания, т</td>
                          <td>Ход смыкания, мм</td>
                          <td>Усилие выталкивания, т</td>
                          <td>Ход выталкивания, мм</td>
                          <td>Высота формы (Мин.~Макс), мм</td>
                          <td>Размер плиты(ВXШ), мм</td>
                          <td>Расстояние между колоннами, мм</td>
                      </tr>
                      <tr>
                          <td>50</td>
                          <td>220</td>
                          <td>4,5</td>
                          <td>60</td>
                          <td>80-320</td>
                          <td>487*450</td>
                          <td>310*310</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Диаметр колонны, мм</td>
                          <td>Позиция впрыска, мм</td>
                          <td>Усилие впрыска (max), т</td>
                          <td>Ход впырска, мм</td>
                          <td>Диаметр поршня, мм</td>
                          <td>Масса впрыска, кг (Zn)</td>
                          <td>Давление в системе, кг/см2</td>
                      </tr>
                      <tr>
                          <td>50</td>
                          <td>0 -50</td>
                          <td>6</td>
                          <td>130</td>
                          <td>40 45</td>
                          <td>0,8 0,9</td>
                          <td>145</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Объем тигля, кг</td>
                          <td>Мощность мотора, кВт</td>
                          <td>Мощность электрической печи, кВт</td>
                          <td>Объем бака, Л</td>
                          <td>Ёмкость аккумуляторов, Л</td>
                          <td>Масса машины, т</td>
                          <td>Габариты машины, мм (ДXШXВ)</td>
                      </tr>
                      <tr>
                          <td>300</td>
                          <td>7,5</td>
                          <td>21</td>
                          <td>200</td>
                          <td>16</td>
                          <td>3</td>
                          <td>3645*1410*1700</td>
                      </tr>
                      </tbody>
                  </table>
              </li>

              <!-- ACG-88 -->
              <li class="tab-content__item js-tab-content" data-tab="2">
                  <table>
                      <tbody>
                      <tr>
                          <td>Усилие смыкания, т</td>
                          <td>Ход смыкания, мм</td>
                          <td>Усилие выталкивания, т</td>
                          <td>Ход выталкивания, мм</td>
                          <td>Высота формы (Мин.~Макс), мм</td>
                          <td>Размер плиты(ВXШ), мм</td>
                          <td>Расстояние между колоннами, мм</td>
                      </tr>
                      <tr>
                          <td>88</td>
                          <td>270</td>
                          <td>5,5</td>
                          <td>60</td>
                          <td>127-350</td>
                          <td>544*530</td>
                          <td>360*360</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Диаметр колонны, мм</td>
                          <td>Позиция впрыска, мм</td>
                          <td>Усилие впрыска (max), т</td>
                          <td>Ход впырска, мм</td>
                          <td>Диаметр поршня, мм</td>
                          <td>Масса впрыска, кг (Zn)</td>
                          <td>Давление в системе, кг/см2</td>
                      </tr>
                      <tr>
                          <td>60</td>
                          <td>0 -50</td>
                          <td>8,5</td>
                          <td>130</td>
                          <td>50 55</td>
                          <td>1,1 1,3</td>
                          <td>145</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Объем тигля, кг</td>
                          <td>Мощность мотора, кВт</td>
                          <td>Мощность электрической печи, кВт</td>
                          <td>Объем бака, Л</td>
                          <td>Ёмкость аккумуляторов, Л</td>
                          <td>Масса машины, т</td>
                          <td>Габариты машины, мм (ДXШXВ)</td>
                      </tr>
                      <tr>
                          <td>350</td>
                          <td>11</td>
                          <td>21</td>
                          <td>225</td>
                          <td>20</td>
                          <td>4</td>
                          <td>3808*1437*2055</td>
                      </tr>
                      </tbody>
                  </table>
              </li>

              <!-- ACG-130 -->
              <li class="tab-content__item js-tab-content" data-tab="3">
                  <table>
                      <tbody>
                      <tr>
                          <td>Усилие смыкания, т</td>
                          <td>Ход смыкания, мм</td>
                          <td>Усилие выталкивания, т</td>
                          <td>Ход выталкивания, мм</td>
                          <td>Высота формы (Мин.~Макс), мм</td>
                          <td>Размер плиты(ВXШ), мм</td>
                          <td>Расстояние между колоннами, мм</td>
                      </tr>
                      <tr>
                          <td>130</td>
                          <td>280</td>
                          <td>7,3</td>
                          <td>70</td>
                          <td>160-450</td>
                          <td>630*595</td>
                          <td>410*410</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Диаметр колонны, мм</td>
                          <td>Позиция впрыска, мм</td>
                          <td>Усилие впрыска (max), т</td>
                          <td>Ход впырска, мм</td>
                          <td>Диаметр поршня, мм</td>
                          <td>Масса впрыска, кг (Zn)</td>
                          <td>Давление в системе, кг/см2</td>
                      </tr>
                      <tr>
                          <td>75</td>
                          <td>0,-65</td>
                          <td>9,5</td>
                          <td>140</td>
                          <td>55 60</td>
                          <td>1,6 1,9</td>
                          <td>145</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Объем тигля, кг</td>
                          <td>Мощность мотора, кВт</td>
                          <td>Мощность электрической печи, кВт</td>
                          <td>Объем бака, Л</td>
                          <td>Ёмкость аккумуляторов, Л</td>
                          <td>Масса машины, т</td>
                          <td>Габариты машины, мм (ДXШXВ)</td>
                      </tr>
                      <tr>
                          <td>350</td>
                          <td>15</td>
                          <td>21</td>
                          <td>250</td>
                          <td>20</td>
                          <td>5</td>
                          <td>4129*1460*2100</td>
                      </tr>
                      </tbody>
                  </table>
              </li>

              <!-- ACG-168 -->
              <li class="tab-content__item js-tab-content" data-tab="4">
                  <table>
                      <tbody>
                      <tr>
                          <td>Усилие смыкания, т</td>
                          <td>Ход смыкания, мм</td>
                          <td>Усилие выталкивания, т</td>
                          <td>Ход выталкивания, мм</td>
                          <td>Высота формы (Мин.~Макс), мм</td>
                          <td>Размер плиты(ВXШ), мм</td>
                          <td>Расстояние между колоннами, мм</td>
                      </tr>
                      <tr>
                          <td>168</td>
                          <td>280</td>
                          <td>8,5</td>
                          <td>85</td>
                          <td>200-500</td>
                          <td>435*685</td>
                          <td>450*450</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Диаметр колонны, мм</td>
                          <td>Позиция впрыска, мм</td>
                          <td>Усилие впрыска (max), т</td>
                          <td>Ход впырска, мм</td>
                          <td>Диаметр поршня, мм</td>
                          <td>Масса впрыска, кг (Zn)</td>
                          <td>Давление в системе, кг/см2</td>
                      </tr>
                      <tr>
                          <td>85</td>
                          <td>0,-85</td>
                          <td>10,5</td>
                          <td>160</td>
                          <td>60 65</td>
                          <td>1,8 2,2</td>
                          <td>145</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Объем тигля, кг</td>
                          <td>Мощность мотора, кВт</td>
                          <td>Мощность электрической печи, кВт</td>
                          <td>Объем бака, Л</td>
                          <td>Ёмкость аккумуляторов, Л</td>
                          <td>Масса машины, т</td>
                          <td>Габариты машины, мм (ДXШXВ)</td>
                      </tr>
                      <tr>
                          <td>350</td>
                          <td>18,5</td>
                          <td>21(36)</td>
                          <td>400</td>
                          <td>30</td>
                          <td>6</td>
                          <td>4515*1531*2214</td>
                      </tr>
                      </tbody>
                  </table>
              </li>

              <!-- ACM-268 -->
              <li class="tab-content__item js-tab-content" data-tab="5">
                  <table>
                      <tbody>
                      <tr>
                          <td>Усилие смыкания, т</td>
                          <td>Ход смыкания, мм</td>
                          <td>Усилие выталкивания, т</td>
                          <td>Ход выталкивания, мм</td>
                          <td>Высота формы (Мин.~Макс), мм</td>
                          <td>Размер плиты(ВXШ), мм</td>
                          <td>Расстояние между колоннами, мм</td>
                      </tr>
                      <tr>
                          <td>268</td>
                          <td>505</td>
                          <td>12</td>
                          <td>125</td>
                          <td>200-640</td>
                          <td>840*840</td>
                          <td>560*560</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Диаметр колонны, мм</td>
                          <td>Позиция впрыска, мм</td>
                          <td>Усилие впрыска (max), т</td>
                          <td>Ход впырска, мм</td>
                          <td>Диаметр поршня, мм</td>
                          <td>Масса впрыска, кг (Zn)</td>
                          <td>Давление в системе, кг/см2</td>
                      </tr>
                      <tr>
                          <td>100</td>
                          <td>0,-100</td>
                          <td>16</td>
                          <td>180</td>
                          <td>70 75</td>
                          <td>3 4</td>
                          <td>145</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Объем тигля, кг</td>
                          <td>Мощность мотора, кВт</td>
                          <td>Мощность электрической печи, кВт</td>
                          <td>Объем бака, Л</td>
                          <td>Ёмкость аккумуляторов, Л</td>
                          <td>Масса машины, т</td>
                          <td>Габариты машины, мм (ДXШXВ)</td>
                      </tr>
                      <tr>
                          <td>500</td>
                          <td>22</td>
                          <td>36</td>
                          <td>400</td>
                          <td>36</td>
                          <td>10</td>
                          <td>4915*1690*2145</td>
                      </tr>
                      </tbody>
                  </table>
              </li>
            </ul>
          </div>';

INSERT INTO products
SET title = 'Периферия и роботизация',
    image_path ='/img/catalog/alRob.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content = '         <p>Выберите вес: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">Для 1000 - 1250 тонн</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">Для 130 - 400 тонн</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">Для 500 - 800 тонн</li>
              <li class="tab-header__item js-tab-trigger" data-tab="4">Для 1300 - 1650 тонн</li>
            </ul>

            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
                <!---------------------------------------------------------->
                <!---------------------------------------------------------->
                <!-- Для 1000 - 1250 тонн -->
                <li class="tab-content__item js-tab-content active" data-tab="1">
                  <h3 class="spec-title">Автоматический заливщик металла</h3>
                  <table>
                      <tbody>
                      <tr>
                          <td>Параметры/модель</td>
                          <td>Усилие смыкания машины,т</td>
                          <td>Объем заливки, кг</td>
                          <td>Точность заливки,%</td>
                          <td>Максимальная скорость заливки, сек</td>
                          <td>Минимальный диаметр тигеля, мм</td>
                          <td>Минимальная глубина заливки тигля, мм</td>
                      </tr>
                      <tr>
                          <td>JSLB6</td>
                          <td>1000-1250</td>
                          <td>12-15</td>
                          <td>&plusmn;2</td>
                          <td>30</td>
                          <td>800</td>
                          <td>500</td>
                      </tr>
                      </tbody>
                  </table>

                  <h3 class="spec-title">Автоматический съемщик отливок</h3>
                  <table>
                      <tbody>
                      <tr>
                          <td>Параметры/модель</td>
                          <td>Усилие смыкания машины, т</td>
                          <td>Диаметр ручки захвата, мм</td>
                          <td>Сила извлечения, кгс</td>
                          <td>Регулируемое расстояние направления извлечения, мм</td>
                          <td>Сила ручки захвата, кгс</td>
                          <td>Давление сжатого воздуха, кгс/см2</td>
                          <td>Присоединительный размер источника сжатого воздуха</td>
                          <td>Вес обрабатываемой детали, кг</td>
                      </tr>
                      <tr>
                          <td>JSEA6</td>
                          <td>1250-1350</td>
                          <td>60-120 мм</td>
                          <td>120</td>
                          <td>500</td>
                          <td>1200</td>
                          <td>4-6.5</td>
                          <td>PT3/8&rdquo;</td>
                          <td>15</td>
                      </tr>
                      </tbody>
                  </table>

                  <h3 class="spec-title">Автоматический опрыскиватель</h3>
                  <table>
                      <tbody>
                      <tr>
                          <td>Параметры/модель</td>
                          <td>Усилие смыкания машины, т</td>
                          <td>Давление сжатого воздуха, кгс/см2</td>
                          <td>Присоединительный размер источника сжатого воздуха</td>
                          <td>Присоединительный размер патрубка смазчика</td>
                          <td>Давление смазки, кгс/см2</td>
                          <td>Присоединительный размер патрубка для смазки</td>
                          <td>Допустимые размеры толщины отливки, мм</td>
                          <td>Время подъема, сек</td>
                      </tr>
                      <tr>
                          <td>JSSD6</td>
                          <td>1000-1250</td>
                          <td>5-6.5</td>
                          <td>PT 1"</td>
                          <td>2-PT11/4&rdquo;</td>
                          <td>5-6.5</td>
                          <td>PT1/2&rdquo;</td>
                          <td>&plusmn;250</td>
                          <td>2,5&lt;</td>
                      </tr>
                      </tbody>
                  </table>
                  <table>
                      <tbody>
                      <tr>
                          <td>Время спуска, сек</td>
                          <td>Количество форсунок</td>
                          <td>Габаритная длина гребенки форсунок, мм</td>
                          <td>Макс. длина медных трубок, мм</td>
                          <td>Электроснабжение</td>
                          <td>Время опрыскивания макс.</td>
                          <td>Объем смазочной жидкости</td>
                          <td>Номинальное расстояние от центра неподвижной части формы до гребенки опрыскивателя до отливки, мм</td>
                          <td>Масса, кг</td>
                      </tr>
                      <tr>
                          <td>2,2</td>
                          <td>4</td>
                          <td>520</td>
                          <td>900 (72 шт.)</td>
                          <td>380- 220У50Нг</td>
                          <td>9 сек</td>
                          <td>настраивается</td>
                          <td>110mm&plusmn;20mm</td>
                          <td>525</td>
                      </tr>
                      </tbody>
                  </table>
              </li>

                <!-- Для 130 - 400 тонн -->
                <li class="tab-content__item js-tab-content" data-tab="2">
                    <h3 class="spec-title">Автоматический заливщик металла</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины,т</td>
                            <td>Объем заливки, кг</td>
                            <td>Точность заливки,%</td>
                            <td>Максимальная скорость заливки, сек</td>
                            <td>Минимальный диаметр тигеля, мм</td>
                        </tr>
                        <tr>
                            <td>JSLB2</td>
                            <td>125-400</td>
                            <td>1,0- 3,5</td>
                            <td>&plusmn;2</td>
                            <td>15</td>
                            <td>480</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Максимальная глубина заливки тигля, мм</td>
                            <td>Мощность электропри вода, Вт (электропривод плеча заливщика)</td>
                            <td>Мощность электропри вода, Вт (электропривод ковша заливщика)</td>
                            <td>Электроснабжение</td>
                            <td>Установленная мощность</td>
                            <td>Вес заливщика, кг</td>
                        </tr>
                        <tr>
                            <td>350</td>
                            <td>750</td>
                            <td>200</td>
                            <td>380 В, 50-60 Гц</td>
                            <td>1.5 кВт</td>
                            <td>270</td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="spec-title">Автоматический съемщик отливок</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины, т</td>
                            <td>Фиксированное рабочее пространство, мм</td>
                            <td>Диаметр ручки захвата, мм</td>
                            <td>Сила извлечения, кгс</td>
                            <td>Регулируемое расстояние направления извлечения, мм</td>
                        </tr>
                        <tr>
                            <td>JSEH2</td>
                            <td>125-400</td>
                            <td>1100</td>
                            <td>40-60</td>
                            <td>&ge;65</td>
                            <td>&le;250</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Сила ручки захвата, кгс</td>
                            <td>Давление сжатого воздуха, кгс/см2</td>
                            <td>Присоединительный размер источника сжатого воздуха</td>
                            <td>Вес обрабатываемой детали, кг</td>
                            <td>Метод фиксирования</td>
                            <td>Вес съемщика, кг</td>
                        </tr>
                        <tr>
                            <td>680</td>
                            <td>4,0-6,5</td>
                            <td>3/8"</td>
                            <td>&le;3,5</td>
                            <td>Неупругий, жесткий</td>
                            <td>380</td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="spec-title">Автоматический опрыскиватель</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины, т</td>
                            <td>Давление сжатого воздуха, кгс/см2</td>
                            <td>Присоединительный размер источника сжатого воздуха</td>
                            <td>Присоединительный размер патрубка смазчика</td>
                            <td>Время подъема, с</td>
                        </tr>
                        <tr>
                            <td>JSSR2</td>
                            <td>125-400</td>
                            <td>4,5-6,5</td>
                            <td>PT 1"</td>
                            <td>PT 1/2"</td>
                            <td>42491</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Время снижения, с</td>
                            <td>Количество форсунок, шт.</td>
                            <td>Длина трубок (маленькие/большие), мм</td>
                            <td>Время опрыскивания</td>
                            <td>Объем смазочной жидкости</td>
                            <td>Номинальное расстояние от центра плиты до отливки, мм</td>
                            <td>Вес, кг</td>
                        </tr>
                        <tr>
                            <td>1,1</td>
                            <td>2</td>
                            <td>350</td>
                            <td>Макс. 9,9 сек</td>
                            <td>Настраивается</td>
                            <td>110&plusmn;20</td>
                            <td>285</td>
                        </tr>
                        </tbody>
                    </table>
                </li>

                <!-- Для 500 - 800 тонн -->
                <li class="tab-content__item js-tab-content" data-tab="3">
                    <h3 class="spec-title">Автоматический заливщик металла</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины,т</td>
                            <td>Объем заливки, кг</td>
                            <td>Точность заливки,%</td>
                            <td>Максимальная скорость заливки, сек</td>
                            <td>Минимальный диаметр тигеля, мм</td>
                        </tr>
                        <tr>
                            <td>JSLB4</td>
                            <td>500-800</td>
                            <td>3,5 - 6</td>
                            <td>&plusmn;2</td>
                            <td>18</td>
                            <td>550</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Максимальная глубина заливки тигля, мм</td>
                            <td>Мощность электропривода, Вт(электропривод плеча заливщика)</td>
                            <td>Мощность электропривода, Вт(электропривод ковша заливщика)</td>
                            <td>Электроснабжение</td>
                            <td>Установленная мощность</td>
                            <td>Вес заливщика, кг</td>
                        </tr>
                        <tr>
                            <td>450</td>
                            <td>750</td>
                            <td>200</td>
                            <td>380 В, 50-60 Гц</td>
                            <td>1.5 кВт</td>
                            <td>275</td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="spec-title">Автоматический съемщик отливок</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины, т</td>
                            <td>Фиксированное рабочее пространство, мм</td>
                            <td>Диаметр ручки захвата, мм</td>
                            <td>Сила извлечения, кгс</td>
                        </tr>
                        <tr>
                            <td>JSEH4</td>
                            <td>500-800</td>
                            <td>1450</td>
                            <td>80-110</td>
                            <td>&ge;95</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Регулируемое расстояние направления извлечения, мм</td>
                            <td>Давление сжатого воздуха, кгс/см2</td>
                            <td>Присоединительный размер источника сжатого воздуха</td>
                            <td>Вес обрабатываемой детали, кг</td>
                            <td>Метод фиксирования</td>
                            <td>Вес съемщика, кг</td>
                        </tr>
                        <tr>
                            <td>&le;400</td>
                            <td>4,0-6,5</td>
                            <td>3/8"</td>
                            <td>&le;8</td>
                            <td>Неупругий, жесткий</td>
                            <td>1300</td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="spec-title">Автоматический опрыскиватель</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины, т</td>
                            <td>Давление сжатого воздуха, кгс/см2</td>
                            <td>Присоединительный размер источника сжатого воздуха</td>
                            <td>Присоединительный размер патрубка смазчика</td>
                            <td>Настройка позиции по горизонтали, мм</td>
                            <td>Время подъема, с</td>
                        </tr>
                        <tr>
                            <td>JSSR4</td>
                            <td>500-800</td>
                            <td>4,5-6,5</td>
                            <td>PT 1/4"</td>
                            <td>PT 1/2"</td>
                            <td>0-650</td>
                            <td>1,9-2,3</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Время снижения, с</td>
                            <td>Количество форсунок</td>
                            <td>Длина трубок (маленькие/большие), мм</td>
                            <td>Электроснабжение</td>
                            <td>Время опрыскивания</td>
                            <td>Объем смазочной жидкости</td>
                            <td>Номинальное расстояние от центра плиты до отливки, мм</td>
                            <td>Вес, кг</td>
                        </tr>
                        <tr>
                            <td>1,4-1,8</td>
                            <td>3</td>
                            <td>570/670</td>
                            <td>380- 220В50Гц</td>
                            <td>Макс. 9,9 сек</td>
                            <td>Настраивается</td>
                            <td>110&plusmn;20</td>
                            <td>355</td>
                        </tr>
                        </tbody>
                    </table>
                </li>

                <!-- Для 1300 - 1650 тонн -->
                <li class="tab-content__item js-tab-content" data-tab="4">
                    <h3 class="spec-title">Автоматический заливщик металла</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Характеристики/Модель</td>
                            <td>Усилие смыкания машины</td>
                            <td>Объём заливки</td>
                            <td>Точность заливки</td>
                            <td>Скорость заливки Макс.</td>
                        </tr>
                        <tr>
                            <td>JSLB8</td>
                            <td>JSLB8</td>
                            <td>1300-1650</td>
                            <td>12-20 кг</td>
                            <td>&plusmn; 2%</td>
                            <td>35сек</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Диаметр тигля Мин.</td>
                            <td>Глубина заливки Макс.</td>
                            <td>Мощность</td>
                            <td>Главный контроллер</td>
                            <td>Рабочая мощность</td>
                            <td>Производительность блока питания</td>
                            <td>Масса</td>
                        </tr>
                        <tr>
                            <td>850 мм</td>
                            <td>450 мм</td>
                            <td>Рука 1,5 кВт 4 Р Ковш 400 ватт 4Р</td>
                            <td>2&phi; &ndash; 380 В 50-60 Гц</td>
                            <td>DC 24 В</td>
                            <td>3,0 киловатт-Ампера</td>
                            <td>510 кг</td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="spec-title">Двухосевой опрыскиватель</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Характеристики/Модель</td>
                            <td>Усилие смыкания машины</td>
                            <td>Распылитель из медных трубок (неподвижная плита))</td>
                            <td>Медные трубки (между плит)</td>
                        </tr>
                        <tr>
                            <td>JSEH2</td>
                            <td>JSSD8</td>
                            <td>1300-1600</td>
                            <td>24 штуки (&phi;8)</td>
                            <td>24 штуки (&phi;8)</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Распылитель из медных трубок (подвижная плита)</td>
                            <td>Длина медных трубок</td>
                            <td>Длина головки распылителя</td>
                            <td>Время подъёма</td>
                            <td>Время спуска</td>
                        </tr>
                        <tr>
                            <td>24 штуки (&phi;8)</td>
                            <td>900 мм</td>
                            <td>520 мм</td>
                            <td>2.2-2.8 c</td>
                            <td>0.0-2.6 c</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Давление входящего воздуха</td>
                            <td>Давление воздуха во входном отверстии</td>
                            <td>Входное отверстие смазки</td>
                            <td>Мощность</td>
                            <td>Габариты машины с медными трубками</td>
                            <td>Габариты машины с модульными распылителями</td>
                        </tr>
                        <tr>
                            <td>5-6,5 кг/см2</td>
                            <td>2-PT11/4</td>
                            <td>PT 1/2</td>
                            <td>2Р-380В/220В/DC 24В</td>
                            <td>2600*840*3400</td>
                            <td>2800*1200*2900</td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="spec-title">Автоматический опрыскиватель</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td>Параметры/модель</td>
                            <td>Усилие смыкания машины</td>
                            <td>Максимальная досягаемость</td>
                            <td>Масса подъёма</td>
                            <td>Центр</td>
                        </tr>
                        <tr>
                            <td>ABB IRB6700-200</td>
                            <td>1300</td>
                            <td>2,6 м</td>
                            <td>175 кг</td>
                            <td>300 мм</td>
                        </tr>
                        </tbody>
                    </table>
                    <table>
                        <tbody>
                        <tr>
                            <td>Изгибающий момент</td>
                            <td>Кол-во осей</td>
                            <td>Напряжение</td>
                            <td>Мощность</td>
                            <td>Габариты основания робота</td>
                            <td>Масса</td>
                        </tr>
                        <tr>
                            <td>981 нм</td>
                            <td>6</td>
                            <td>200-600 В, 50/60 Гц</td>
                            <td>ISO-Cube 2,7 кВт</td>
                            <td>1107*720 мм</td>
                            <td>1310-1405 кг</td>
                        </tr>
                        </tbody>
                    </table>
                </li>

            </ul>
          </div>';

INSERT INTO products
SET title = 'Печи',
    image_path ='/img/catalog/heat.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content = '          <p>Выберите тип печи: </p>
          <div class="tabs">

            <!--  Контейнер с вкладками   -->
            <ul class="tab-header">
              <li class="tab-header__item js-tab-trigger active" data-tab="1">Плавильно-поддерживающие</li>
              <li class="tab-header__item js-tab-trigger" data-tab="2">Поддерживающая</li>
              <li class="tab-header__item js-tab-trigger" data-tab="3">Центральная</li>
            </ul>

            <!--  Контейнер с блоками, которые содержат контент вкладок   -->
            <ul class="tab-content">
                <!---------------------------------------------------------->
                <!---------------------------------------------------------->
                <!-- Плавильно-поддерживающие -->
                <li class="tab-content__item js-tab-content active" data-tab="1">
                  <h3 class="spec-title">Электрическая</h3>
                  <table>
                    <tbody>
                    <tr>
                      <td><strong>Наименование</strong></td>
                      <td><strong>CH-250</strong></td>
                      <td><strong>CH-300</strong></td>
                      <td><strong>CH-400</strong></td>
                      <td><strong>CH-500</strong></td>
                      <td><strong>CH-600</strong></td>
                      <td><strong>CH-800</strong></td>
                      <td><strong>CH-1000</strong></td>
                    </tr>
                    <tr>
                      <td>Размер (д*в), мм</td>
                      <td>&phi;1380*1000</td>
                      <td>&phi;1380*1100</td>
                      <td>&phi;1480*1150</td>
                      <td>&phi;1580*1200</td>
                      <td>&phi;1580*1300</td>
                      <td>&phi;1580*1400</td>
                      <td>&phi;1580*1500</td>
                    </tr>
                    <tr>
                      <td>Вес печи, кг</td>
                      <td>1500</td>
                      <td>1500</td>
                      <td>2000</td>
                      <td>2200</td>
                      <td>2500</td>
                      <td>3000</td>
                      <td>3500</td>
                    </tr>
                    <tr>
                      <td>Загрузка тигля, кг</td>
                      <td>250</td>
                      <td>300</td>
                      <td>400</td>
                      <td>500</td>
                      <td>600</td>
                      <td>800</td>
                      <td>1000</td>
                    </tr>
                    <tr>
                      <td>Мощность, кВт</td>
                      <td>45</td>
                      <td>60</td>
                      <td>75</td>
                      <td>90</td>
                      <td>110</td>
                      <td>135</td>
                      <td>150</td>
                    </tr>
                    <tr>
                      <td>Скрость плавления, кг/час</td>
                      <td>60</td>
                      <td>80</td>
                      <td>100</td>
                      <td>120</td>
                      <td>150</td>
                      <td>180</td>
                      <td>210</td>
                    </tr>
                    <tr>
                      <td>Диаметр для заливщика, мм</td>
                      <td>500</td>
                      <td>500</td>
                      <td>595</td>
                      <td>675</td>
                      <td>675</td>
                      <td>750</td>
                      <td>750</td>
                    </tr>
                    <tr>
                      <td>Усилие смыкания ЛПД, т</td>
                      <td>130-160</td>
                      <td>160-200</td>
                      <td>280-350</td>
                      <td>400-500</td>
                      <td>500-650</td>
                      <td>650-800</td>
                      <td>1000-1600</td>
                    </tr>
                    </tbody>
                  </table>

                  <h3 class="spec-title">Газовая</h3>
                  <table>
                    <tbody>
                    <tr>
                      <td><strong>Наименование</strong></td>
                      <td><strong>CH4-300</strong></td>
                      <td><strong>CH4-350</strong></td>
                      <td><strong>CH4-400</strong></td>
                      <td><strong>CH4-500</strong></td>
                      <td><strong>CH4-600</strong></td>
                      <td><strong>CH4-800</strong></td>
                      <td><strong>CH4-1000</strong></td>
                    </tr>
                    <tr>
                      <td>Режим слива расплава</td>
                      <td>в тигель</td>
                    </tr>
                    <tr>
                      <td>Размер (д*в), мм</td>
                      <td>&phi;1380*1100</td>
                      <td>&phi;1480*1100</td>
                      <td>&phi;1480*1150</td>
                      <td>&phi;1580*1200</td>
                      <td>&phi;1580*1300</td>
                      <td>&phi;1680*1400</td>
                      <td>&phi;1680*1500</td>
                    </tr>
                    <tr>
                      <td>Диаметр для заливщика, мм</td>
                      <td>500</td>
                      <td>595</td>
                      <td>595</td>
                      <td>675</td>
                      <td>675</td>
                      <td>750</td>
                      <td>750</td>
                    </tr>
                    <tr>
                      <td>Загрузка тигля, кг</td>
                      <td>300</td>
                      <td>350</td>
                      <td>400</td>
                      <td>500</td>
                      <td>600</td>
                      <td>800</td>
                      <td>1000</td>
                    </tr>
                    <tr>
                      <td>Макс мощность (104ккал)</td>
                      <td>15</td>
                      <td>15</td>
                      <td>17</td>
                      <td>20</td>
                      <td>23</td>
                      <td>26</td>
                      <td>30</td>
                    </tr>
                    <tr>
                      <td>Скрость плавления, кг/час</td>
                      <td>100</td>
                      <td>100</td>
                      <td>120</td>
                      <td>140</td>
                      <td>170</td>
                      <td>200</td>
                      <td>250</td>
                    </tr>
                    <tr>
                      <td>Температура камеры плавления</td>
                      <td>750-850 ℃</td>
                    </tr>
                    <tr>
                      <td>Усилие смыкания ЛПД, т</td>
                      <td>160-200</td>
                      <td>200-280</td>
                      <td>280-350</td>
                      <td>400-500</td>
                      <td>500-650</td>
                      <td>650-800</td>
                      <td>1000-1600</td>
                    </tr>
                    </tbody>
                  </table>
                </li>

                <!-- Поддерживающая -->
                <li class="tab-content__item js-tab-content" data-tab="2">
                  <table>
                    <tbody>
                    <tr>
                      <td><strong>Название</strong></td>
                      <td><strong>CY-500&nbsp;</strong></td>
                      <td><strong>CY-650&nbsp;</strong></td>
                      <td><strong>CY-850&nbsp;</strong></td>
                      <td><strong>CY-1000&nbsp;</strong></td>
                      <td><strong>CY-1200&nbsp;</strong></td>
                    </tr>
                    <tr>
                      <td>Вместимость, кг</td>
                      <td>500</td>
                      <td>650</td>
                      <td>850</td>
                      <td>1000</td>
                      <td>1200</td>
                    </tr>
                    <tr>
                      <td>Размер камеры плавления, мм</td>
                      <td>400*450</td>
                      <td>430*500</td>
                      <td>450*550</td>
                      <td>480*580</td>
                      <td>500*550</td>
                    </tr>
                    <tr>
                      <td>Глубина камеры плавления, мм</td>
                      <td>310</td>
                      <td>350</td>
                      <td>400</td>
                      <td>400</td>
                      <td>450</td>
                    </tr>
                    <tr>
                      <td>Мощность камеры плавления, кВт</td>
                      <td>60</td>
                      <td>60</td>
                      <td>90</td>
                      <td>90</td>
                      <td>120</td>
                    </tr>
                    <tr>
                      <td>Потребление энергии, м/ч</td>
                      <td>1,5</td>
                      <td>2</td>
                      <td>2,4</td>
                      <td>2,5</td>
                      <td>3</td>
                    </tr>
                    <tr>
                      <td>Производительность, м/ч</td>
                      <td>230</td>
                      <td>300</td>
                      <td>390</td>
                      <td>500</td>
                      <td>600</td>
                    </tr>
                    <tr>
                      <td>Габариты, мм</td>
                      <td>2200*1350</td>
                      <td>2300*1350</td>
                      <td>2400*1500</td>
                      <td>2450*1500</td>
                      <td>2500*1500</td>
                    </tr>
                    </tbody>
                  </table>
                  <table>
                    <tbody>
                    <tr>
                      <td><strong>Параметр</strong></td>
                      <td><strong>CY-1500&nbsp;</strong></td>
                      <td><strong>CY-2000&nbsp;</strong></td>
                      <td><strong>CY-2500&nbsp;</strong></td>
                      <td><strong>CY-3000&nbsp;</strong></td>
                    </tr>
                    <tr>
                      <td>Вместимость, кг</td>
                      <td>1500</td>
                      <td>2000</td>
                      <td>2500</td>
                      <td>3000</td>
                    </tr>
                    <tr>
                      <td>Размер камеры плавления, мм</td>
                      <td>550*600</td>
                      <td>600*700</td>
                      <td>650*750</td>
                      <td>700*800</td>
                    </tr>
                    <tr>
                      <td>Глубина камеры плавления, мм</td>
                      <td>450</td>
                      <td>450</td>
                      <td>500</td>
                      <td>500</td>
                    </tr>
                    <tr>
                      <td>Мощность камеры плавления, кВт</td>
                      <td>120</td>
                      <td>120</td>
                      <td>150</td>
                      <td>200</td>
                    </tr>
                    <tr>
                      <td>Потребление энергии, м/ч</td>
                      <td>3,2</td>
                      <td>3,5</td>
                      <td>4</td>
                      <td>4,5</td>
                    </tr>
                    <tr>
                      <td>Производительность, м/ч</td>
                      <td>700</td>
                      <td>910</td>
                      <td>1100</td>
                      <td>1400</td>
                    </tr>
                    <tr>
                      <td>Габариты, мм</td>
                      <td>2600*1650</td>
                      <td>3000*1650</td>
                      <td>3200*1650</td>
                      <td>4000*1800</td>
                    </tr>
                    </tbody>
                  </table>
                </li>

                <!-- Центральная -->
                <li class="tab-content__item js-tab-content" data-tab="3">
                  <table>
                    <tbody>
                    <tr>
                      <td><strong>Ед.имз.</strong></td>
                      <td><strong>500кг</strong></td>
                      <td><strong>1000кг</strong></td>
                      <td><strong>1500кг</strong></td>
                      <td><strong>2000кг</strong></td>
                    </tr>
                    <tr>
                      <td>Тип нагрева</td>
                      <td>Газ/Масло</td>
                      <td>Газ/Масло</td>
                      <td>Газ/Масло</td>
                      <td>Газ/Масло</td>
                    </tr>
                    <tr>
                      <td>Вместимость, кг</td>
                      <td>1200</td>
                      <td>2300</td>
                      <td>3500</td>
                      <td>4500</td>
                    </tr>
                    <tr>
                      <td>Мощность (камера плавления), кВт</td>
                      <td>320</td>
                      <td>320*2</td>
                      <td>450*2</td>
                      <td>630*2</td>
                    </tr>
                    <tr>
                      <td>Мощность (камера поддержания), кВт</td>
                      <td>150</td>
                      <td>230</td>
                      <td>320</td>
                      <td>450</td>
                    </tr>
                    <tr>
                      <td>Скорость плавления, кг/ч</td>
                      <td>500</td>
                      <td>1000</td>
                      <td>1500</td>
                      <td>2000</td>
                    </tr>
                    </tbody>
                  </table>
                </li>

            </ul>
          </div>';

-- ПЕРИФЕРИЯ
INSERT INTO products
SET title = 'Дробилки',
    image_path ='/img/catalog/drob.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Миксеры',
    image_path ='/img/catalog/mixer.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Осушители полимерного сырья',
    image_path ='/img/catalog/suh.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Загрузчики',
    image_path ='/img/catalog/avtozagruz.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Термостаты',
    image_path ='/img/catalog/tmpctrl.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Чиллеры',
    image_path ='/img/catalog/chillers.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Стеллажи',
    image_path ='/img/catalog/stelazh.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Роботы',
    image_path ='/img/catalog/robots.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Транспортеры',
    image_path ='/img/catalog/trans.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Циклонные системы',
    image_path ='/img/catalog/cyclsystem.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Шнековые дозаторы красителя',
    image_path ='/img/catalog/vcm.jpg',
    big_image_path ='',
    category_id = '3',
    small_desc = '',
    content = '';
