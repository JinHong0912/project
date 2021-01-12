<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <link rel="stylesheet" href="../css/jquery.treeview.css" />



<%@ include file = "../include/head.jspf" %>
<%@include file="../include/info.jspf"%>
<!-- ---------------------------------------------------------------------------------------- -->
<body>
    	<div class="top-wrap">
        <div class="logo-wrap">
        		<a href="/groupware/groupAdmin">관리자페이지</a>
        </div>
        <div class="info-wrap">
            <div class="info-title">
                <span class="info-sName gray" >{ ID : ${sessionScope.userName} 님</span> -
                <span class="info-sName gray" >접속권한 : ${sessionScope.auth} 등급 }</span>
            </div>
            <div class="info-auth">
                <span class="info-sName">{<a href="/logout" class="gray">로그아웃</a>}</span>
            </div>
        </div>
    </div>
     <div class="main-wrap">
        <div class="tree-wrap">
            <div id="sidetree">
                <div id="sidetreecontrol">
                    <div class="sideController">
                        <a href="?#" class="close-tab a-btn margin-l1 a-active">전체닫기</a>
                        <a href="?#" class="open-tab an-btn margin-l-2">전체열기</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <ul id="tree">
                    <li>
                        <img src="../css/fileImg/folder-closed.gif" />사원 정보2
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="/groupware/getUsersView?uid=${sessionScope.uid}">사원 개인정보</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">사내 연락망 조회</a></li>
                            
                            <li><img src="../css/fileImg/folder.gif" /> <a href="/groupware/groupwareUserList">사원 관리</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">관리자 정보 수정</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="../css/fileImg/folder-closed.gif" />게시판
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="/board/getBoardList">게시판 조회</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">댓글 조회</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">게시판 관리</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">댓글 관리</a></li>
                        </ul>
                    </li>
                    <!-- <li>
                        <img src="../css/fileImg/folder-closed.gif" /> 증명서 신청
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">증명서 신청 조회</a></li>
                        </ul>
                    </li> -->
                    <li>
                        <img src="../css/fileImg/folder-closed.gif" /> 개인 스케줄 관리
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">개인 스케줄 관리</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">팀원 스케줄 관리</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">세미나 스케줄 관리</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="../css/fileImg/folder-closed.gif" /> 개인 급여처리 내역
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">급여 명세서 확인</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">명세서 작성/a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="../css/fileImg/folder-closed.gif" /> 새소식 / 공지사항
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">새소식</a></li>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">공지 사항</a></li>
                        </ul>

                    </li>
                    <li>
                        <img src="../css/fileImg/folder-closed.gif" /> 개발자게시판
                        <ul>
                            <li><img src="../css/fileImg/folder.gif" /> <a href="#">게시판</a></li>
                            
                        </ul>

                    </li>
                    
                </ul>
            </div>
        </div>

		<!--  중복되는 부분 -->
		<!-- 그룹웨어 메인 부분  -->
         	<!-- 부서 고르는 페이지 -->
<%--          <c:if test="${template eq 'groupware' && mypage eq 'Department'}"> --%>
<%--             <%@ include file = "groupDepartment.jsp" %> --%>
<%--         </c:if> --%>

<!--         	관리자 페이지 -->
         <c:if test="${template eq 'groupware' && mypage eq 'admin'}">
            <%@ include file = "groupAdmin.jsp" %>
        </c:if>
<!--          	사원 메인 페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'user'}">
            <%@ include file = "../users/groupUsers.jsp" %>
        </c:if>        
        
<!--          	사원  정보  List 확인 페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'userList'}">
            <%@ include file = "../users/groupwareUserList.jsp" %>
        </c:if>

<!--          	신규 사원 관리자 등록   페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'userNewAdmin'}">
            <%@ include file = "../users/groupUserRegisterAdmin.jsp" %>
        </c:if>


<!--          	사원  상세정보 등록  페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'userDetail'}">
            <%@ include file = "../users/groupwareUserDetail.jsp" %>
        </c:if>

<!--          	사원  상세정보 수정 페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'userDetailUpdate'}">
            <%@ include file = "../users/groupDetailUpdate.jsp" %>
        </c:if>
        
<!--          	사원 개인 정보 확인 페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'userView'}">
            <%@ include file = "../users/groupUserView.jsp" %>
        </c:if>        
        
<!--          	사원 개인 정보 리스트 확인 페이지  -->
         <c:if test="${template eq 'groupware' && mypage eq 'userDetailView'}">
            <%@ include file = "../users/groupwareUserList.jsp" %>
        </c:if>        
        
        
        
        
<!-- -------------------------------board--------------------------------------------------------         -->
<!--         게시판 목 부분 -->
        <c:if test="${template eq 'groupBoard' && mypage eq 'getBoardList'}">
            <%@ include file = "../board/groupBoardList.jsp" %>
        </c:if>        
                     
<!--         게시판 입력 부분 -->
        <c:if test="${template eq 'groupBoard' && mypage eq 'setBoardContents'}">
            <%@ include file = "../board/groupSetBoradContents.jsp" %>
        </c:if>        
        <c:if test="${template eq 'devBoard'}">
            <%@ include file = "../devBoard/devBoardList.jsp" %>
        </c:if>
        
		<!-- 달라지는 부분 -->
 	




    </div>

</body>
<!-- 오픈 소스 메뉴 전체 열고 닫기 js -->
<script>

    $(".open-tab").click(function () {
        $(".close-tab").removeClass("a-active");
        $(".open-tab").addClass("a-active");
    });
    $(".close-tab").click(function () {
        $(".close-tab").addClass("a-active");
        $(".open-tab").removeClass("a-active");
    });
</script>

<%@ include file = "../include/foot.jspf" %>