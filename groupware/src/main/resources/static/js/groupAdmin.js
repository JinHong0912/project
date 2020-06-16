// tab 메뉴 4-1
$(function(){
    
    $(".tab-one").click(function(e){
        $(".tab-one").removeClass("active-one")
        $(".tab-one-content").removeClass("show")
        $(this).addClass("active-one");
        $($(this).attr("href")).addClass("show"); 
        e.preventDefault();

    });



});

// <!-- 새소식 문서확인 -->

$(function(){
    
    $(".tab-two").click(function(e){
        $(".tab-two").removeClass("active-two")
        $(".tab-two-content").removeClass("show")
        $(this).addClass("newActive");
        $($(this).attr("href")).addClass("show"); 
        e.preventDefault();

    });



});

// <!-- tob 메뉴 일정 관리 -->

    $(function(){
    
        $(".tab").click(function(e){
            $(".tab").removeClass("active")
            $(".tab-content").removeClass("show")
            $(this).addClass("active");
            $($(this).attr("href")).addClass("show"); 
            e.preventDefault();
    
        });
    
    
    
    });

