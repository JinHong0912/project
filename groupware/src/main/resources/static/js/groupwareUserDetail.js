
// <!-- tob 메뉴 일정 관리 -->

$(function(){
    
    $(".btn-off").click(function(e){
        $(".btn-off").removeClass("active")
        $(".info").removeClass("show")
        $(this).addClass("active");
        $($(this).attr("href")).addClass("show"); 
        e.preventDefault();

    });



});

