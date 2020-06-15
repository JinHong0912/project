
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
