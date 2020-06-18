/**
 * 작성일 : 2020년 6월 18일 작성자 : 류진홍
 */

$(function(){
    
	$(".tab").click(function(e){
		$(".tab").removeClass("active")
		$(".tab-content").removeClass("show")
		$(this).addClass("active");
		$($(this).attr("href")).addClass("show"); 
		e.preventDefault();

	});



});