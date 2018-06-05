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

    $('#lightSlider').lightSlider({
        mode: 'fade',
        gallery: true,
        loop:true,
        slideMargin: 0,
        thumbItem: 5,
        prevHtml: '<img src="/motorbike/wp-content/themes/motorbike/assets/images/left-arrow.png">',
        nextHtml: '<img src="/motorbike/wp-content/themes/motorbike/assets/images/right-arrow.png">'
    });

    var monkeyList = new List('taxonomy_wrapper', {
        valueNames: ['single_brand_motor'],
        page: 12,
        pagination: true
    });
});