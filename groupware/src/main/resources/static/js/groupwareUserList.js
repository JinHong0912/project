  //사원 권한 부여
  function authUpdate(auth, uid){//변수 명을 받는것
    //작동 여부 확인 
	//alert("성공 여부");
	//alert(uid); alert(auth);
    $.ajax({
        type : "post",
        url : "/users/authUpdate",//콘트롤러에 있는 주고가 넘어 오는 것 확인하기
        data : {
                "auth" : auth,
                "uid"  : uid
        },
        
        success : function(data){
            if ( data == "success"){
                alert("권한 변경이 성공하였습니다.");
                window.location.reload();
            }else{
                alert("권한 변경이 실패 하였습니다. 다시 확인해 주세요.");
                window.location.reload();
            
            }
        },
        error :function() {
            alert("시스템에 오류가 있습니다. 확인하세요.");
                    
        }
    });
    
}




  