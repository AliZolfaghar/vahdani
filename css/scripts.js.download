/*********************************************************************************

    Template Name: Azan - Islamic HTML Template  
    Template URI: https://themeforest.net/user/hastech
    Description: Azan is a beautiful and creative islamic  html template
    Author: HasTech
    Author URI: https://themeforest.net/user/hastech
    Version: 1.1

    Note: This is scripts js. All custom scripts here.

**********************************************************************************/

/*===============================================================================
			[ INDEX ]
=================================================================================

    Sticky Header
	Banner Padding
    Pillar Hover
    Login Register Form
    Cart Plus Minus Button
    Checkout Login/Register Toggle
    Checkout Shipping Form Toggle
    Payment Method Toggle
    Fixed Footer

=================================================================================
			[ END INDEX ]
================================================================================*/

(function($) {
	'use strict';



    /*=========== Sticky Header ===========*/
    function stickyHeader(){
        $(window).on('scroll', function(){
            var sticky_menu = $('.sticky--header');
            var pos = sticky_menu.position();
            if (sticky_menu.length) {
                var windowpos = sticky_menu.top;
                $(window).on('scroll', function() {
                   var windowpos = $(window).scrollTop();
                   if (windowpos > pos.top + 250) {
                       sticky_menu.addClass('is-sticky');
                   } else {
                       sticky_menu.removeClass('is-sticky');
                   }
                });
            }
        });
    }
    stickyHeader();






    /*=========== Banner Padding ===========*/
	function bannerContentPadding(){
        var winWidth = $(window).width();
        var headerHeight = $('header.fixed--header').height();
        if(winWidth > 991){
            $('.banner__content').css('margin-top', headerHeight);
        }
    }
    bannerContentPadding();





    /*=========== Pillar Hover ===========*/
    function pillarHover(){
        var trigger = $('.pillar__single');
        setTimeout(function(){
            trigger.on('mouseover', function(){
                $(this).find('.pillar__single__icon').addClass('animated shake');
            });
            trigger.on('mouseout', function(){
                $(this).find('.pillar__single__icon').removeClass('animated shake');
            });
        }, 200);
    }
    pillarHover();




    /*============= Login Register Form ==============*/
    function loginRegisterForm(){
        var trigger = $('.accountbox-trigger'),
            container = $('.accountbox-wrapper');
            $('<div class="body-overlay"></div>').prependTo(container);

        trigger.on('click', function(e){
            e.preventDefault();
            container.addClass('is-visible');
        });

        $('.body-overlay').on('click', function(){
            container.removeClass('is-visible');
        });

        $('span.accountbox-close-button').on('click', function(){
            container.removeClass('is-visible');
        });

    }
    loginRegisterForm();


    /*============= Cartbox Toggler ==============*/
    function cartboxToggler(){
        var trigger = $('.minicart-trigger'),
            container = $('.cartbox-wrap');
        $('<div class="body-overlay"></div>').prependTo(container);

        trigger.on('click', function(){
            container.toggleClass('is-visible');
        })
        $('.cartbox-close').on('click', function(){
            container.removeClass('is-visible');
        })
        container.find('.body-overlay').on('click', function(){
            container.removeClass('is-visible');
        })
    }
    cartboxToggler();


    /*============ Cart Plus Minus Button ============*/
    function cartPlusminus(){

        $('.cart-plus-minus').append('<div class="dec qtybutton">-</div><div class="inc qtybutton">+</div>');
        $('.qtybutton').on('click', function () {
            var $button = $(this);
            var oldValue = $button.parent().find('input').val();
            if ($button.text() == "+") {
                var newVal = parseFloat(oldValue) + 1;
            } else {
                // Don't allow decrementing below zero
                if (oldValue > 1) {
                    var newVal = parseFloat(oldValue) - 1;
                } else {
                    newVal = 1;
                }
            }
            $button.parent().find('input').val(newVal);
        });
    }
    cartPlusminus();






    /*============= Checkout Login/Register Toggle ==============*/
    function checkoutLoginToggle(){
        var checkoutMethodList = $('.checkout-method-list li');
        checkoutMethodList.on('click', function(){
            var form = $(this).data('form');
            if( !$(this).hasClass('active') ) {
                $('.checkout-method-list li').removeClass('active');
                $(this).addClass('active');
                $('.checkout-method form').slideUp(500);
                $('.' + form).delay(500).slideDown();
            }
        });
    }
    checkoutLoginToggle();
    




    /*============= Checkout Shipping Form Toggle ==============*/
    function checkoutShippingToggle(){
        var shipingFormToggle = $('.shipping-form-toggle');
        var shipingForm = $('.shipping-form');
        shipingFormToggle.on('click', function(){
            if( $(this).hasClass('active') ) {
                $(this).removeClass('active');
                shipingForm.slideUp();
            } else {
                $(this).addClass('active');
                shipingForm.slideDown();
            }
        });
    }
    checkoutShippingToggle();
    




    /*============= Payment Method Toggle ==============*/
    function paymentMethodToggle(){
        var paymentMethodList = $('.payment-method-list li');
        var paymentFormToggle = $('.payment-form-toggle');
        var paymentForm = $('.payment-form');
        paymentMethodList.on('click', function(){
            paymentMethodList.removeClass('active');
            $(this).addClass('active');
            if( $(this).hasClass('payment-form-toggle') ) {
                paymentForm.slideDown()
            } else {
                paymentForm.slideUp()
            }
        });
    }
    paymentMethodToggle();




    /*============= Fixed Footer ==============*/
    function fixedFooter(){
        var winWidth = $(window).width() > 991,
            checkFooter = $('.footer-area').hasClass('fixed--footer'),
            footerHeight = $('.footer-area').height();
        if(winWidth && checkFooter){
            $('.footer-area').css({
                'position' : 'fixed',
                'left' : 0,
                'bottom' : 0,
                'right' : 0,
                'width' : 100 + '%',
                'z-index' : -1
            });
            $('.wrapper').css('margin-bottom', footerHeight);
        }
    };
    fixedFooter();





})(jQuery);
