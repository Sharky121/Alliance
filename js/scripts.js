$(document).ready(function () {
    $("#footer-phone").mask("+7 (999) 999-99-99", {
        completed: function(){
            $(".send-btn__ico").addClass('active');
        }
    });

    $(".owl-carousel").owlCarousel({
        responsive: {
            0: {
                items: 1
            },
            991: {
                items: 3
            }
        },
        loop: true,
        center: true,
        dots: true,
        nav: true,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        autoplay: false
    });

    // $('a[data-rel^=lightcase]').lightcase({
    //     onStart: { bar: function () {
    //             let iframe = $('#lightcase-content').find('iframe');
    //             let src = iframe.attr('src');
    //             src += '?autoplay=1&rel=0';
    //             iframe.eq(0).attr('src', src);
    //         }
    //     }
    // });

    // ymaps.ready(init);
    // function init () {
    //     var myMap = new ymaps.Map("map", {
    //         // Центр карты, указываем коордианты
    //         center:[54.582000, 39.766990],
    //         // Масштаб, тут все просто
    //         zoom: 14
    //     });
    //
    //     var myGeoObjects = [];
    //
    //     // Наша метка, указываем коордианты
    //     myGeoObjects = new ymaps.Placemark([54.582000, 39.766990],{
    //         balloonContentBody: 'Текст в балуне',
    //     },{
    //         iconLayout: 'default#image',
    //         // Путь до нашей картинки
    //         iconImageHref: '/img/placemarker.png',
    //         // Размер по ширине и высоте
    //         iconImageSize: [100, 77],
    //         // Смещение левого верхнего угла иконки относительно
    //         // её «ножки» (точки привязки).
    //         iconImageOffset: [-35, -35]
    //     });
    //
    //     var clusterer = new ymaps.Clusterer({
    //         clusterDisableClickZoom: false,
    //         clusterOpenBalloonOnClick: false,
    //     });
    //
    //     clusterer.add(myGeoObjects);
    //     myMap.geoObjects.add(clusterer);
    //     // Отлючаем возможность изменения масштаба
    //
    // }
});
