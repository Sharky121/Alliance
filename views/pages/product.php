<?php

    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
    }

    $product_sql = "SELECT p.title, small_desc, content, big_image_path, c.id as cat_id, c.title as cat_title
                    FROM products p 
                    INNER JOIN category c ON c.id = p.category_id
                    WHERE p.id = '$id'";

    $product_res = mysqli_query($link, $product_sql);

    $product_name = mysqli_fetch_all($product_res, MYSQLI_ASSOC);

    foreach ($product_name as $key => $val) {
        $product_title =  $val['title'];
        $category_id = $val['cat_id'];
        $category_title = $val['cat_title'];
        $small_desc = $val['small_desc'];
        $content = $val['content'];
        $big_image_path = $val['big_image_path'];
    };

?>

<main>
    <div class="container">
<!--        <h1 class="main-title"></h1>-->

        <ul class="breadcrumbs-list">
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="index.php">Главная</a>
            </li>
            <li class="breadcrumbs-list__item">
                <a class="breadcrumbs-list__link" href="?view=catalog&cat=<?= $category_id ?>"><?= $category_title; ?></a>
            </li>
            <li class="breadcrumbs-list__item breadcrumbs-list__item--active">
                <a class="breadcrumbs-list__link"><?= $product_title; ?></a>
            </li>
        </ul>

        <div class="product-wrapper">
            <div class="product__column product__column--left">
                <?php if (empty($big_image_path)): ?>
                    <img class="product-image" src="/img/placeholder.png" alt="Изображение отсутствует">
                <?php else: ?>
                    <img class="product-image" src="<?= $big_image_path; ?>" alt="<?= $product_title; ?>">
                <?php endif; ?>
            </div>

            <div class="product__column product__column--right">
                <h1 class="product-title"><?= $product_title; ?></h1>


                <?php if (empty($small_desc)): ?>
                    <p class="product-small_desc">
                        Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.
                        В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.
                    </p>
                <?php else: ?>
                    <p class="product-small_desc">
                        <?= $small_desc; ?>
                    </p>
                <?php endif; ?>

                <button class="btn">Скачать технические характеристики</button>
                <button class="btn">Задать вопрос</button>
            </div>
        </div>

        <!-- Контент -->
        <?php if (empty($content)): ?>
            <p>
                Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.
                В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.
            </p>

        <div class="specification">

          <p>Выберите тип печи: </p>
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
          </div>
        </div>

        <?php else: ?>
          <div class="specification">
              <?= $content; ?>
          </div>
        <?php endif; ?>
        <p>Мы оставляем за собой право вносить изменения без предварительного уведомления.</p>
    </div>
</main>

