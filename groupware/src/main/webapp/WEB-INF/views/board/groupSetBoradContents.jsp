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
                
            </div>
            <div class="">
                <!-- <h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i>게시판입니.</h3> -->
                <button type="button" class="btn-active margin-l1 margin-b5" id=""
                            onClick="location.href='insa.html'">전체목록</button>
            </div>
            <form method="post" id="" class="" action="/board/setBoardContents" enctype="multipart/form-data">
               <input type="hidden" name="grpBoard_writer" value="${sessionScope.uid}"/>
                <table class="font-size4">
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan=""></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-3 center underline td-color-01 noto bold">게시물 제목</td>
                        <td class="td-13 padding-lr5" colspan="2" >
                            <input type="text" name="grpBoard_subject" id="grpboard_subject" class="width-100 noto" required autofocus />    
                        </td>
                        
                       
                    </tr>
                    <!-- -->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan=""></td>
                    </tr>
                  
                    <!---->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan=""></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-3 center underline td-color-01 noto bold">게시물 형태</td>
                        <td class="td-13 padding-lr5" colspan="">
                            <select name="grpBoard_boardType" id="grpboard_type" class="width-100 height-30">
                                <option value="0">게시물 형태를 선택 하세요</option>
                                <option value="새소식">새소식</option>  
                                <option value="공지사항">공지사항</option>  
                                <option value="업무사항">업무사항</option>  
                            </select>
                        </td>
                
                        
                     
                    </tr>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan=""></td>
                    </tr>
                    <!---->
                    <tr class="tr-35">
                        <td class="td-3 center underline td-color-01 noto bold">게시물 내용</td>
                            <td class="width-100 padding-lr-10" colspan="2">
                                <textarea name="grpBoard_boardContents" id="editor"></textarea></td>
                                    <!--------글쓰기에 필요한 부분 ---------->
                                    <script>
                                        CKEDITOR.replace("editor");
                                        CKEDITOR.config.height = 400;
                                    </script>
                                    <!---+-------------------------+--->
                    </tr>
                    <tr class="tr-35">
                        <td class="td-3 center underline td-color-01 noto bold">첨부 파일</td>
                        <td class="td-13 padding-lr5" colspan="2">
                            <input type="file" name="files" id="" class="width-100 noto"  autofocus />    
                        </td>
<!--                         <td class="td-3 right" > -->
<!--                             <button type="button" class="btn-on  margin-r5" id="" onClick="location.href=''">파일 첨부</button> -->
<!--                         </td> -->
                        
                        <!-- <td class="td-1 center underline noto bold  ">
                            <button type="button" class="btn-on1 margin-l-2 " id="" onClick="location.href=''">사원 주소록</button>
                        </td> -->
                        
                       
                    </tr>
                   
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="2"></td>
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