<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/board/groupSetBoard.css" />
<!-- 글쓰기에 필요한 부분 -->
<script src="/ckeditor/ckeditor.js"></script>
<!-- 글쓰기에 필요한 부분 -->
<style>
    tr:first-child {
        /* background-color: #6f809a; */
    }

    td {
        border: 1px solid #d6dce7;
    }
</style>
<!-- 중복 부분-------------------------------------------------------------------------------------- -->

<body>

    <div class="tbl-wrap">
            <div class="btn-grp">
                <form method="post" id="" class="" action="">
                    <span class="float-l">
                        <!-- <button type="button" class="btn-active margin-l1" id=""
                            onClick="location.href='insa.html'">전체목록</button> -->
                            <h1 class="noto margin-t20 margin-b5">
                            	<i class="fas fa-circle"></i>사내 게시판 입니다.
                            </h1>
                    </span>
                    <span class="float-r">
                        <!-- <button type="button" class="btn-on margin-l-2" id="" onClick="location.href=''">개인신상</button> -->
                    </span>
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="">
                <!-- <h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i>게시판입니.</h3> -->
                <button type="button" class="btn-active margin-l1 margin-b5" id=""
                            onClick="location.href='insa.html'">전체목록</button>
            </div>
            <form method="post" action="">
                <table class="font-size4">
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">게시물 제목</td>
                        <td class="td-13 padding-lr5" colspan="9" >
                            <input type="text" name="" id="" class="width-100 noto" required autofocus />    
                        </td>
                        
                       
                    </tr>
                    <!-- -->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">작성자</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">부서</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option value="0">부서를 선택하세요</option>
                                <option value="1">인사부</option>
                                <option value="2">기획부</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">직급</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option value="0">직급을 선택하세요</option>
                                <option value="1">사원</option>
                                <option value="2">대리</option>
                                <option value="3">과장</option>
                                <option value="4">부장</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">작성일자</td>
                        <td class="td-13 padding-lr5" colspan="3">
                            <input type="text" name="" id="" class="width-100 noto" placeholder="" />
                        </td>
                     
                    </tr>
                    <!---->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">게시물 형태</td>
                        <td class="td-13 padding-lr5" colspan="3">
                            <select name="" id="" class="width-100 height-30">
                                <option value="0">게시물 형태를 선택 하세요</option>
                                <option value="1">새소식</option>  
                                <option value="2">공지사항</option>  
                                <option value="3">업무사항</option>  
                            </select>
                        </td>
                
                        <td class="td-7 center underline td-color-01 noto bold">작성자 이메일</td>
                        <td class="td-13 padding-lr5" colspan="4">
                            <input type="text" name="" id="" class="width-100 noto" placeholder="" />
                        </td>
                        <td class="td-20 center " >
                            <button type="button" class="btn-on1 margin-r5" id="" onClick="location.href=''">주소록</button>
                        </td>
                        
                     
                    </tr>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <!---->
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">게시물 내용</td>
                            <td class="width-100 padding-lr-10" colspan="9">
                                <textarea name="content" id="editor">dsadsada</textarea></td>
                                    <!--------글쓰기에 필요한 부분 ---------->
                                    <script>
                                        CKEDITOR.replace("editor");
                                        CKEDITOR.config.height = 400;
                                    </script>
                                    <!---+-------------------------+--->
                    </tr>
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">첨부 파일</td>
                        <td class="td-13 padding-lr5" colspan="8">
                            <input type="text" name="" id="" class="width-100 noto" required autofocus />    
                        </td>
                        <td class="td-20 center" >
                            <button type="button" class="btn-on1  margin-r5" id="" onClick="location.href=''">파일 첨부</button>
                        </td>
                        
                        <!-- <td class="td-1 center underline noto bold  ">
                            <button type="button" class="btn-on1 margin-l-2 " id="" onClick="location.href=''">사원 주소록</button>
                        </td> -->
                        
                       
                    </tr>
                   
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                </table>
                <div class="btn-grp left margin-t10">
                    <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                    <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                </div>
            </form>
        </div>
   
</body>
<!-- 글쓰기에 필요한 부분 -->
<script>initSample();</script>
<!-- 글쓰기에 필요한 부분 -->
<script>
	$(function(){
		$("#reg-btn").click(function(){

			//wyswig editor 유효성 검사
			var str = CKEDITOR.instances.editor;
			if( str.getData() == ""){
					alert("게시물 내용을 입력하세요.");
					str.focus();
					return false;
			}
		});
			
});
</script>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->