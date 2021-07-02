
jQuery('#carouselExample').on('slide.bs.carousel', function (e) {


    var $e = jQuery(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 4;
    var totalItems = jQuery('.carousel-item').length;

    if (idx >= totalItems - (itemsPerSlide - 1)) {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i = 0; i < it; i++) {
            // append slides to end
            if (e.direction == "left") {
                jQuery('.carousel-item').eq(i).appendTo('.carousel-inner');
            }
            else {
                jQuery('.carousel-item').eq(0).appendTo('.carousel-inner');
            }
        }
    }
});


jQuery('#carouselExample').carousel({
    interval: 1000
});


jQuery(document).ready(function () {
    /* show lightbox when clicking a thumbnail */
    jQuery('a.thumb').click(function (event) {
        event.preventDefault();
        var content = jQuery('.modal-body');
        content.empty();
        var title = jQuery(this).attr("title");
        jQuery('.modal-title').html(title);
        content.html($(this).html());
        jQuery(".modal-profile").modal({ show: true });
    });

});