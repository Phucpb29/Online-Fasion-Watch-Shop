$(function () {
    $(".category__link-man").hover(function () {
        $(".dropdown__watches-men").css("display", "flex");
        $(".dropdown__watches-woman").css("display", "none");
    });
    $(".category__link-woman").hover(function () {
        $(".dropdown__watches-men").css("display", "none");
        $(".dropdown__watches-woman").css("display", "flex");
    });
});