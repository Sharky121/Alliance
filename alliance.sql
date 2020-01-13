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
--
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
    image_path ='/img/catalog/itemVertStandart.png',
    big_image_path ='',
    category_id = '1',
    small_desc = 'Экономьте рабочие площади вашего производства и получайте сложные комплексные изделия с помощью вертикальных термопластавтоматов.
                  Вертикальная конструкция помогает сократить расходы, уменьшить количество отходов, сохраняя при этом процесс как можно более эффективным.',
    content = '';

-- Вертикальные термопластавтоматы для тонкостенного литья
INSERT INTO products
SET title = 'Вертикальные термопластавтоматы для тонкостенного литья',
    image_path ='/img/catalog/vertTPA2.jpg',
    big_image_path ='',
    category_id = '1',
    small_desc = 'Тонкостенное литье — это специализированная форма обычного литья под давлением, которая фокусируется на массовом производстве пластиковых деталей,
                  которые являются тонкими и легкими.',
    content = '<p>Выберите серию: </p>
<div class="tabs">

  <!--  Контейнер с вкладками   -->
  <ul class="tab-header">
    <li class="tab-header__item js-tab-trigger active" data-tab="1">JC550</li>
    <li class="tab-header__item js-tab-trigger" data-tab="2">JC550DM</li>
    <li class="tab-header__item js-tab-trigger" data-tab="3">JC550R</li>
    <li class="tab-header__item js-tab-trigger" data-tab="4">JC850</li>
    <li class="tab-header__item js-tab-trigger" data-tab="5">JC850DM</li>
    <li class="tab-header__item js-tab-trigger" data-tab="6">JC850R</li>
  </ul>


  <!--  Контейнер с блоками, которые содержат контент вкладок   -->
  <ul class="tab-content">
        <!-- JC550 -->
        <li class="tab-content__item js-tab-content active" data-tab="1">

              <!--  Узел впрыска -->
              <h3 class="spec-title">Узел впрыска</h3>
              <table>
                <tbody>
                <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3&nbsp;</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин&nbsp;</td>
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
                    <td>Размер плит, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальная высота пресс-формы, мм</td>
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
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стол, мм</td>
                </tr>
                <tr>
                    <td>140</td>
                    <td>47</td>
                    <td>200</td>
                    <td>7,5</td>
                    <td>5,5</td>
                    <td>3,1</td>
                    <td>2,8*1,05*2,05</td>
                    <td>-</td>
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
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3&nbsp;</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин&nbsp;</td>
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
                    <td>Размер плит, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальная высота пресс-формы, мм</td>
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
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стол, мм</td>
                </tr>
                <tr>
                    <td>140</td>
                    <td>47</td>
                    <td>200</td>
                    <td>7,5</td>
                    <td>5,5</td>
                    <td>3,5</td>
                    <td>2,8*1,05*2,05</td>
                    <td>-</td>
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
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3&nbsp;</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин&nbsp;</td>
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
                        <td>Размер плит, мм</td>
                        <td>Минимальная высота пресс-формы, мм</td>
                        <td>Ход открытия, мм</td>
                        <td>Максимальная высота пресс-формы, мм</td>
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
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стол, мм</td>
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

        <!-- JC850 -->
        <li class="tab-content__item js-tab-content" data-tab="4">

              <!--  Узел впрыска -->
              <h3 class="spec-title">Узел впрыска</h3>
              <table>
                <tbody>
                <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3&nbsp;</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин&nbsp;</td>
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
                    <td>Размер плит, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальная высота пресс-формы, мм</td>
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
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стол, мм</td>
                </tr>
                <tr>
                    <td>140</td>
                    <td>65</td>
                    <td>300</td>
                    <td>11</td>
                    <td>7,5</td>
                    <td>5,89</td>
                    <td>3,3*1,15*2,65</td>
                    <td>-</td>
                </tr>
                </tbody>
            </table>
        </li>

        <!-- JC850DM -->
        <li class="tab-content__item js-tab-content" data-tab="5">

              <!--  Узел впрыска -->
              <h3 class="spec-title">Узел впрыска</h3>
              <table>
                <tbody>
                <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3&nbsp;</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин&nbsp;</td>
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
                    <td>Размер плит, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальная высота пресс-формы, мм</td>
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
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стол, мм</td>
                </tr>
                <tr>
                    <td>140</td>
                    <td>65</td>
                    <td>300</td>
                    <td>11</td>
                    <td>7,5</td>
                    <td>6,5</td>
                    <td>3,3*1,15*2,65</td>
                    <td>-</td>
                </tr>
                </tbody>
            </table>
        </li>

        <!-- JC850R -->
        <li class="tab-content__item js-tab-content" data-tab="6">

              <!--  Узел впрыска -->
              <h3 class="spec-title">Узел впрыска</h3>
              <table>
                <tbody>
                <tr>
                    <td>Диаметр шнека, мм</td>
                    <td>Давление впрыска, кг/см2</td>
                    <td>Объём впрыска, см3&nbsp;</td>
                    <td>Масса впрыска, г</td>
                    <td>Масса впрыска, унция</td>
                    <td>Скорость впрыска, см3/сек</td>
                    <td>Ход шнека, мм</td>
                    <td>Скорость вращения шнека, об/мин&nbsp;</td>
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
                    <td>Размер плит, мм</td>
                    <td>Минимальная высота пресс-формы, мм</td>
                    <td>Ход открытия, мм</td>
                    <td>Максимальная высота пресс-формы, мм</td>
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
                    <td>Максимальное гидравлическое давление, кг/см2</td>
                    <td>Производительность насоса, Л/мин</td>
                    <td>Объём масляного бака, Л</td>
                    <td>Мощность насос-мотора, кВт</td>
                    <td>Мощность нагрева, кВт</td>
                    <td>Масса машины, Т</td>
                    <td>Габариты машины (Д*Ш*В), М</td>
                    <td>Диаметр вращающегося стол, мм</td>
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
    content = '';


-- ЛИТЬЕ МЕТАЛЛОВ
INSERT INTO products
SET title = 'Машины для литья цветных металлов под давлением (холодная камера)',
    image_path ='/img/catalog/lanson.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content ='';

INSERT INTO products
SET title = 'Машины для литья цветных металлов под давлением (горячая камера)',
    image_path ='/img/catalog/aliance.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Периферия и роботизация',
    image_path ='/img/catalog/alRob.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content = '';

INSERT INTO products
SET title = 'Печи',
    image_path ='/img/catalog/heat.jpg',
    big_image_path ='',
    category_id = '2',
    small_desc = '',
    content = '';

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
