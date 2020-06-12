<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file ="../include/head.jspf" %>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/group/groupDepartment.css" />

<body>
    <div class="top-wrap">
        <div class="logo-wrap">관리자페이지</div>
        <div class="info-wrap">
            <div class="info-title">
                <span class="info-sName gray">{그린컴퓨터님</span> -
                <span class="info-sName gray">접속권한 : 9등급}</span>
            </div>
            <div class="info-auth">
                <span class="info-sName">{<a href="#" class="gray">로그아웃</a>}</span>
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
                        <img src="css/images/folder-closed.gif" /> 새소식 / 공지사항
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">새소식</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">공지 사항</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" />게시판 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">게시판 내역 조회</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">댓글 전용 조회</a></li>
                        </ul>
                    </li>
                    <!-- <li>
                        <img src="css/images/folder-closed.gif" /> 증명서 신청
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">증명서 신청 조회</a></li>
                        </ul>
                    </li> -->
                    <li>
                        <img src="css/images/folder-closed.gif" /> 개인 스케줄 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">개인 스케줄 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">팀원 스케줄 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">세미나 스케줄 관리</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" /> 개인 급여처리 내역
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">급여 명세서 확인</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" /> 회원 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">회원 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">관리자 정보 수정</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 중복 부분-------------------------------------------------------------------------------------- -->

        <div class="tbl-wrap">
            <div class="btn-grp">
                <form method="post" id="" class="" action="">
                  <div class="groupDepart-wrap flex-box1">
                        
                    <!-- [ 인사팀 ]     -->
                        <div class="Depart-frontEnd icon-type2 ma-left2 cu-point">
                            <a href="#" class="icon-type1 bg-color3">
                                <i class="fab fa-foursquare font-size1 font-color1"></i>
                            </a>
                            <div class="font-wei1 font-size5">[ 인사팀 ]</div>
                        </div>
                    <!-- [ 기획팀 ] -->
                        <div class="Depart-backEnd icon-type2 ma-left2 cu-point">
                           <!-- <div class="Depart-wrap"> -->
                                <a href="#" class="backicon-box icon-type1 bg-color4">
                                    <i class="far fa-bold font-size1 font-color1"></i>
                                </a>
                                <sapn class="icon-type1 font-wei1 font-size5">[ 기획팀 ]</sapn>
                            <!-- </div>         -->
                        </div>
                        <!-- 관리자 -->
                        <div class="Depart-admin icon-type2 ma-left2 cu-point">
                           
                                <a href="#" class="backicon-box icon-type1 bg-color1">
                                   <i class="fas fa-user-cog font-size1 font-color1"></i>
                                </a>
                                <sapn class="icon-type3 font-wei1 font-size5">[ 관리자 전용 ]</sapn>
                        </div>

                  </div>
                </form>
            </div>
    </div>
</body>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->






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