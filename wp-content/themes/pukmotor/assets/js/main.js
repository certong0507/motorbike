$( document ).ready(function() {

    var inputs = document.querySelectorAll( '.wpcf7-file' );

    Array.prototype.forEach.call( inputs, function( input ){
        var label	 = input.parentElement.nextElementSibling;
        var labelVal = label.innerHTML;
        
        input.addEventListener( 'change', function( e )
        {
            var fileName = '';
            if( this.files && this.files.length > 1 )
                fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
            else
                fileName = e.target.value.split( '\\' ).pop();
    
            if( fileName )
                label.querySelector( 'strong' ).innerHTML = fileName;
            else
                label.innerHTML = labelVal;
        });
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        dots: false,
        adaptiveHeight: false,
        asNavFor: '.slider-nav'
      });
      $('.slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        centerMode: true,
        focusOnSelect: true,
        nextArrow: '<i class="fa fa-arrow-right slick_right"></i>',
        prevArrow: '<i class="fa fa-arrow-left slick_left"></i>',
        responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
            }
        }, {
            breakpoint: 640,
            settings: {
                slidesToShow: 4,
                slidesToScroll: 4,
           }
        }, {
            breakpoint: 420,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
       }
        }]
      });
 
      
    var monkeyList = new List('taxonomy_wrapper', {
        valueNames: ['single_motor'],
        page: 12,
        pagination: true
    });

    $('.accordion').on('click', function(){
        this.classList.toggle("accordion_active");

        var panel = this.nextElementSibling;
        if (panel.style.maxHeight){
          panel.style.maxHeight = null;
        } else {
          panel.style.maxHeight = panel.scrollHeight + "px";
        }
    });

    $('.brand_logo_slick').slick({
        slidesToShow: 5,
       slidesToScroll: 1,
       centerMode: true,
       centerPadding: '60px',
       slidesToShow: 3,
       responsive: [
         {
           breakpoint: 768,
           settings: {
             arrows: false,
             centerMode: true,
             centerPadding: '40px',
             slidesToShow: 3
           }
         },
         {
           breakpoint: 480,
           settings: {
             arrows: false,
             centerMode: true,
             centerPadding: '40px',
             slidesToShow: 1
           }
         }
       ]
     });
});