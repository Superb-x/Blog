/**
 * Created by lxl on 2017/8/30.
 */
$(function () {
    // 缓存DOM 节点,JQ优化技巧之一
    var $item = $(".item-spread"), // 展开项
        $mask = $("#mask"),        // 遮罩层
        $wrap = $(".wrapper");     // 顶层容器
    $item.click(function () {
        $(this).toggleClass("active").siblings().removeClass("active");
    });
    $(".menu-btn").click(function () {
        $(".wrapper").toggleClass("opened");
    });
    $mask.on("touchmove", function (e) {
        e.preventDefault();
        return false
    });
    $mask.click(function () {
         $wrap.removeClass("opened");
    })
});