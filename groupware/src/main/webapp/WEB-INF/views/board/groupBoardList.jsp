<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/board/groupBoardList.css" />
<!-- 글쓰기에 필요한 부분 -->

<!-- 글쓰기에 필요한 부분 -->
<style>
    tr:first-child {
        background-color: #6f809a; 
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
                        <button type="button" class="btn-active margin-l1" id=""
                            onClick="location.href='#'">전체목록</button>
                        <button type="button" class="btn-off margin-l-2" id="" onClick="location.href='/board/setBoardContents'">게시판등록</button>
                    </span>
                    <span class="float-r">
                        <select name="" id="" class="select-150">
                            <option>선택하세요</option>
                        </select>
                        <input type="text" class="input-150 margin-l-2" name="" required />
                        <button type="submit" class="btn-on margin-r2 margin-l-2" id="">내용검색</button>
                    </span>
                    <div class="clearfix"></div>
                </form>
            </div>
        
            <table class="font-size4">
                <tr class="tr-40 th-color-01 center white underline">
                    <td class="td-5">번호</td>
                    <td class="td-5">사번</td>
                    <td class="td-10">게시물형태</td>
                    <td class="td-5">근무부서</td>
                    <td class="td-5">사원구분</td>
                    <td class="td-5">이름</td>
                    <td class="td-55">제목</td>
                    <td class="td-15">이메일</td>
                </tr>
                <tr class="tr-40 tr-color-odd center">
                    <td>1</td>
                    <td>1234</td>
                    <td>공지사항</td>
                    <td>영업1팀</td>
                    <td>상임</td>
                    <td>부장</td>
             	    <td><a href="#" class="bold underline">20200602</a></td>
                    <td><a href="#" class="bold underline">최저다</a></td>
                </tr>
             
                
            </table>
            <div class="page-grp center">
                <span class="page">
                    <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-double-left"></i></a>
                </span>
                <span class="page">
                    <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-left"></i></a>
                </span>
                <span class="page page-active">1</span>
                <span class="page">2</span>
                <span class="page">3</span>
                <span class="page">4</span>
                <span class="page">5</span>
                <span class="page">
                    <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-right"></i></a>
                </span>
                <span class="page">
                    <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-double-right"></i></a>
                </span>
            </div>
        </div>
    </div>
</body>
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