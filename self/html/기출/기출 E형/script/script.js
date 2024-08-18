$(function () {
    // 탭 메뉴
    const tabBtn = $(".notice .title > ul > li"); // 버튼 설정
    const tabCont = $(".notice .cont > div"); // 콘텐츠 설정

    // 모든 콘텐츠를 안보이게 설정 --> 첫번째 콘텐츠만 보이게 처리
    tabCont.hide().eq(0).show();

    tabBtn.click(function (e) {
        e.preventDefault();

        const index = $(this).index(); // 내가 클릭한 번호를 저장
        // alert(index)

        $(this).addClass("active").siblings().removeClass("active");
        tabCont.eq(index).show().siblings().hide();
    });


    // 메뉴
    $(".nav>ul>li").mouseenter(function () {
        $(this).find(">ul").stop().slideDown();
    });
    $(".nav>ul>li").mouseleave(function () {
        $(this).find(">ul").stop().slideUp();
    });

    // 이미지 슬라이드(페이드 효과)
    let currentIndex = 0; // 현재 이미지

    setInterval(function () { // 3초에 한번씩 실행
        let nextIndex = (currentIndex + 1) % 3; // 1 2 0 1 2 무한반복

        $(".slider").eq(currentIndex).fadeOut(800); // 첫번째 이미지 사라짐
        $(".slider").eq(nextIndex).fadeIn(800); // 두번째 이미지 나타남

        currentIndex = nextIndex; // 두번째 인덱값을 현재 인덱값에 저장
    }, 3000);
});
