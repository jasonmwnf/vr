var iOS = navigator.userAgent.match(/(iPod|iPhone|iPad)/);
if(iOS){

    function iosVhHeightBug() {
        var height = $(window).height() / 50;
        $(".home-main").css('min-height', height);
    }

    iosVhHeightBug();
    $(window).bind('resize', iosVhHeightBug);

}