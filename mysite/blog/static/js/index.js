/**
 * Created by lxl on 2017/8/30.
 */
$(function () {
    // 缓存DOM 节点,JQ优化技巧之一
    var $item = $(".item-spread");
    $item.click(function () {
        $(this).toggleClass("active").siblings().removeClass("active");
    })
})