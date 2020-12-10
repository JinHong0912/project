//회원가입 작성 뛰우기
$(function() {
	$("#register-btn").click(function(){
//		alert("성공.");
		
		//variable
        var userID     = $("#userID");
        var passwd     = $("#passwd");
        var repasswd   = $("#repasswd");
        
        var department   = $("#department");
        var userRank   = $("#userRank");
        
        var userName   = $("#userName");
        var userEmail  = $("#userEmail");
        var userPhone  = $("#userPhone");

        // msg
        var userIDMsg   = "아이디를 입력하세요.";
        var passwdMsg   = "비밀번호를 입력하세요.";
        var repasswdMsg = "비밀번호를 확인하세요.";
        var passwdConfirmMsg = "비밀번호가 일치하지 않습니다.";
        
        var departmentMsg = "부서를  선택해 주세요.";
        var userRankMsg = "직급을 선택해주세요.";
        
        var userNameMsg   = "이름을 입력하세요.";
        var userEmailMsg  = "이메일을 입력하세요.";
       
        var userPhoneMsg  = "사용자 휴대전화를 입력하세요.";
		
        //userid
        if( $.trim( userID.val() ) == ''){
            alert(userIDMsg);
            userID.focus();
            return false; //submit
            
        }
        	
        //passwd
        if( $.trim( passwd.val() ) == ''){
            alert(passwdMsg);
            userID.focus();
            return false; //submit
            
        }
		
        //check passwd
        if($(this).data("option")!='no_passwd'){
            //repasswd
             if( $.trim( repasswd.val() ) == ''){
                 alert(repasswdMsg);
                 repasswd.focus();
                 return false; //submit
             }
            
            if( $.trim( passwd.val() ) != $.trim( repasswd.val())){
                alert(passwdConfirmMsg);
                passwd.val("");
                repasswd.val("");
                passwd.focus();
                return false; //submit    
            }
        }
        
      //department
        if( $.trim( department.val() ) == '0'){
            alert(departmentMsg);
            return false; //submit    
        }
        
        //userRank
        if( $.trim( userRank.val() ) == '0'){
            
        	alert(userRankMsg);
           
            return false; //submit    
        }
        
        //userName
        if( $.trim( userName.val() ) == ''){
            alert(userNameMsg);
            userName.focus();
            return false; //submit    
        }
       
        //userEmail
        if( $.trim(userEmail.val() ) == ''){
            alert(userEmailMsg);
            userEmail.focus();
            return false; //submit    
        }
      
       //userPhone
        if( $.trim( userPhone.val() ) == ''){
            alert(userPhoneMsg);
            userPhone.focus();
            return false; //submit    
        }

	});
});


//아이디 중복 확인 
$(function() {
	$("#userID").blur(function() {
			$.ajax({
			type : "POST",
			url : "/users/idCheck",
			data : {

				"userid" : $("#userID").val()
			},
			success : function(data) {
				if ($.trim(data) == "NO") {
					$("#confirm").html("사용 할 수 없는 아이디입니다.");
					$("#userID").val("");
					$("#userID").focus();
					
				} else {
					$("#confirm").html("사용 할 수 있는 아이디입니다.");
					}
					return false;
			}

		});

	});

});

//유효성 체크 (한글 제외 유효성 검사)
$(function(){
		$("#userID").blur(function(){
			var userID = $.trim( $("#userID").val() );//trim 공백제거
			var hangul = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;//사용시에는 test 사용 
			
			if(hangul.test(userID) ){
				alert("아이디에 한글은 사용하실 수 없습니다.");
				$("#userID").val("");
				$("#userID").foucus();
				return false;
			}
			
		});
});
//이름에 영어가 들어가면 안되는 유효성 검사
$(function(){
	$("#userName").blur(function(){
		var userName = $.trim( $("#userName").val() );
		var eng =/[a-zA-Z0-9]/;//영어 ,숫자 안들어 가게
		
		if( eng.test(userName) ){
			alert("이름은 한글만 사용 할 수 있습니다.");
			$("#userName").val("");
			$("#userName").focus();
			return false;
		}
	
	});


});

$(function() {
	$("#userID").blur(function() {
			$.ajax({
			type : "POST",
			url : "/users/idCheck",
			data : {

				"userid" : $("#userID").val()
			},
			success : function(data) {
				if ($.trim(data) == "NO") {
					$("#confirm").html("사용 할 수 없는 아이디입니다.");
					$("#userID").val("");
					$("#userID").focus();
					
				} else {
					$("#confirm").html("사용 할 수 있는 아이디입니다.");
					}
					return false;
			}

		});

	});

});

//=========== 사용자 전화 번호 숫자만=====
// 숫자 이번주에 넣어 보기
//$(document).ready(function(){
//	$("input[name=userPhone]").on("keyup",function(){		
//		$(this).val(addHifon($(this).val().replace(/[^0-9]/g,"-")));
//	});	
//});
//
//function addHifon(data){
//	return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g,"-");
//}
