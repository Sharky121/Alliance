$(document).ready(function () {
    let demo1 = $('#demo01');

    if (demo1.length) {
        demo1.animatedModal({
            color: '#4db6ac',

            afterClose: function() {
                $('.price-modal__btn').text('Отправить');
            }
        });
    }

    $('.price-form').submit(function(event) {
        event.preventDefault();
        let msg  = $(this).serialize();

        $.ajax({
            type: 'POST',
            url: 'send.php',
            data: msg,

            success: function(data) {
                $('.price-modal .form-btn').text('Ваш запрос отправлен!');
                $('.price-modal .form-btn').attr('disabled');
            },
            error: function(xhr, str){
                console.log(xhr);
            }
        });
    });

    $('.phone-form').submit(function(event) {
        event.preventDefault();
        let msg  = $(this).serialize();

        $.ajax({
            type: 'POST',
            url: 'send.php',
            data: msg,

            success: function(data) {
                $('.main-footer__input').val('Ваш запрос отправлен!');
                $('.main-footer__input').prop( "disabled", true );

                setTimeout(function(){
                    $('.main-footer__input').val( 'Ваш телефон');
                    $('.main-footer__input').prop( "disabled", false);
                }, 2000);
            },
            error: function(xhr, str){
                console.log(xhr);
            }
        });
    });

    $('.question-form').submit(function(event) {
        event.preventDefault();
        let msg  = $(this).serialize();

        $.ajax({
            type: 'POST',
            url: 'send.php',
            data: msg,

            success: function(data) {
                $('.question-form .form-btn').text('Ваш запрос отправлен!');
                $('.question-form .form-btn').prop( "disabled", true );

                setTimeout(function(){
                    $('.question-form .form-btn').text('Отправить');
                    $('.question-form .form-btn').prop( "disabled", false);
                }, 2000);
            },
            error: function(xhr, str){
                console.log(xhr);
            }
        });
    });

    $('.press-form').submit(function(event) {
        event.preventDefault();
        let msg  = $(this).serialize();

        $.ajax({
            type: 'POST',
            url: 'sendPress.php',
            data: msg,

            success: function(data) {
                $('.press-form .form-btn').text('Ваш запрос отправлен!');
                $('.press-form .form-btn').prop( "disabled", true );

                setTimeout(function(){
                    $('.press-form .form-btn').text('Отправить');
                    $('.press-form .form-btn').prop( "disabled", false);
                }, 2000);
            },
            error: function(xhr, str){
                console.log(xhr);
            }
        });
    });

    $('#catalog').on('click', function (e) {
        e.preventDefault();

        $(this).toggleClass('active');
        $('.sub-menu').slideToggle();
    });

    $("#footer-phone").mask("+7 (999) 999-99-99", {
        completed: function(){
            $(".send-btn__ico").addClass('active');
        }
    });

    if ($(".owl-carousel").length) {
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
            autoplay: true
        });
    }

    $('.js-tab-trigger').click(function() {
        var id = $(this).attr('data-tab');
        var content = $('.js-tab-content[data-tab="'+ id +'"]');

        $('.js-tab-trigger.active').removeClass('active');
        $(this).addClass('active');

        $('.js-tab-content.active').removeClass('active');
        content.addClass('active');
    });

    $('a[data-rel^=lightcase]').lightcase({
        onStart: { bar: function () {
                let iframe = $('#lightcase-content').find('iframe');
                let src = iframe.attr('src');
                src += '?autoplay=1&rel=0';
                iframe.eq(0).attr('src', src);
            }
        }
    });

    if($('#map').length) {
            ymaps.ready(init);

            function init () {
                var myMap = new ymaps.Map("map", {
                    // Центр карты, указываем коордианты
                    center:[54.582000, 39.766990],
                    // Масштаб, тут все просто
                    zoom: 14
                });
            
                var myGeoObjects = [];
            
                // Наша метка, указываем коордианты
                myGeoObjects = new ymaps.Placemark([54.582000, 39.766990],{
                    balloonContentBody: 'Текст в балуне',
                },{
                    iconLayout: 'default#image',
                    // Путь до нашей картинки
                    iconImageHref: '/img/placemarker.png',
                    // Размер по ширине и высоте
                    iconImageSize: [100, 77],
                    // Смещение левого верхнего угла иконки относительно
                    // её «ножки» (точки привязки).
                    iconImageOffset: [-35, -35]
                });
            
                var clusterer = new ymaps.Clusterer({
                    clusterDisableClickZoom: false,
                    clusterOpenBalloonOnClick: false,
                });
            
                clusterer.add(myGeoObjects);
                myMap.geoObjects.add(clusterer);
                // Отлючаем возможность изменения масштаба
            
            }
    }

});
