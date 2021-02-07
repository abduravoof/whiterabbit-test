(function ($) {
    'use strict';
    var baseUrl=$('base').attr("href");
    var tileOverlay=$('.tile-overlay');
    var productsList=$('#productsList');
    var filterProductForm=$('#filterProductForm');
    /*============================================
    PRODUCTS
    ==============================================*/
    //CALL LIST PRODUCTS FUNCTION
    if(productsList.length>0){
        listProducts(0);
    }

    //FILTER PRODUCTS
    filterProductForm.on('submit',function(e){
        e.preventDefault();
        var loader = Ladda.create(document.querySelector('#filterButton'));
        loader.start();
        listProducts(0);
        loader.stop();
    });

    //LIST PRODUCTS
    function listProducts(page_num){
        var form=filterProductForm;
        $.ajax({
            type: 'POST',
            url: baseUrl+'home/list_products/'+page_num,
            data:form.serialize(),
            dataType: 'json',
            async: false,
            beforeSend: function () {
                tileOverlay.show();
            },
            success: function (data) {
                if (data.success) {
                    //append data
                    productsList.html(data.content);
                    //hide loader
                    tileOverlay.fadeOut("slow");
                    // Detect pagination click
                    $('#pagination a').on('click',function(e){
                        e.preventDefault(); 
                        var pageno = $(this).attr('data-ci-pagination-page');
                        listProducts(pageno);
                    });
                    
                } else {
                    alert('Error on loading list');
                }
            },
            error: function () {
                alert('Something went wrong');
            }
        });
    }

    
})(jQuery);