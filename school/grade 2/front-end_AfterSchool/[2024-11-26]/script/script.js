// JQuery를 사용하는 방법 2가지
// 1. jQuery('선택자').함수()
// 2. $('선택자').함수() <- 압도적으로 많이 쓰임

// JQuery를 시작하기 위한 방법 2가지
// 1. $(function() { 코드 } )
// 2. $(document).ready(function() { 코드 } )
$(document).ready(function() {
    // 마우스를 올렸을 때 메뉴가 나타남
    jQuery('.menu>li').mouseover(function() {
        $(this).find('.sub').stop().slideDown(500);
    }).mouseout(function() {
        $(this).find('.sub').stop().slideUp(500);
    });
});
