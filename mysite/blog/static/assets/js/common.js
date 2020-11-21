/**
 * Created by near on 2020/11/21.
 */
$(function () {
    $(".bar").click(function () {
        $("body").toggleClass("open");
    });
    //微信浏览器CSS @media不生效
    var ua = navigator.userAgent.toLowerCase();
    var isWechat = ua.match(/MicroMessenger/i)=="micromessenger";
    if(isWechat && document.documentElement.clientWidth <= 768){
        $(".header-content").css({width:"200px",height:"100%", position: "fixed", transform: "translate3D(-200px, 0, 0)"});
        $(".header .left h1").css({width:"100%", "text-align": "center"});
        $(".header .navbar").css({"margin-left":0, "text-align": "center"});
        $(".header .right").css({padding: "0 10px"});
        $(".content").css({width: "100%"});
        $(".content .content-box").css({width: "100%"});
        $(".footer").css({width: "100%", "padding-bottom": "15px"});
    }
});