<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/group/groupAdmin.css" />

<%@ include file = "../include/head.jspf" %>
<!-- ---------------------------------------------------------------------------------------- -->
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
                        <img src="css/images/folder-closed.gif" /> 사원 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">사원 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">관리자 정보 수정</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" />게시판 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">게시판 조회</a></li>
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
                        <img src="css/images/folder-closed.gif" /> 새소식 / 공지사항
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">새소식</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">공지 사항</a></li>
                        </ul>

                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" /> 개인 스케줄 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">개인 스케줄 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">팀원 스케줄 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">세미나 스케줄 관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 중복 부분-------------------------------------------------------------------------------------- -->
        <!-- 왼쪽 메인 부분 -->
        <div class="group-warp-container-left">
            <div class="group-left-up">
                <div class="btn-grp">
                    <form method="post" id="" class="" action="">


                    </form>
                </div>
            </div>
            <!-- 왼쪽 메인 밑 부분 -->
            <div class="group-left-down-wrap">
                <div class="left-wrap-down flex-box2">
                    
                    <div class="left-down-text1">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">


                            </form>
                        </div>
                    </div>
                    <div class="left-down-text2">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">


                            </form>
                        </div>
                    </div>
                    <div class="left-down-text3">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">


                            </form>
                        </div>
                    </div>
             
                </div>
             </div>
                






        </div>




        <!-- 오른쪽 관리자 정보 및 스케줄 넣을 부분 -->
        <div class="group-warp-container-right">
            <div class="right-down">
                <div class="group-wrap-up">
                    <div class="group-up">
                        <form method="post" id="" class="" action="">

                        </form>
                    </div>
                </div>
                <!-- 스케줄 넣을 부분 -->
                <div class="group-wrap-down">
                    <div class="group-down">
                        <form method="post" id="" class="" action="">

                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

</body><body>

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
                        <img src="css/images/folder-closed.gif" /> 사원 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">사원 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">관리자 정보 수정</a></li>
                        </ul>
                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" />게시판 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">게시판 조회</a></li>
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
                        <img src="css/images/folder-closed.gif" /> 새소식 / 공지사항
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">새소식</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">공지 사항</a></li>
                        </ul>

                    </li>
                    <li>
                        <img src="css/images/folder-closed.gif" /> 개인 스케줄 관리
                        <ul>
                            <li><img src="css/images/folder.gif" /> <a href="#">개인 스케줄 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">팀원 스케줄 관리</a></li>
                            <li><img src="css/images/folder.gif" /> <a href="#">세미나 스케줄 관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 중복 부분-------------------------------------------------------------------------------------- -->
        <!-- 왼쪽 메인 부분 -->
        <div class="group-warp-container-left">
            <div class="group-left-up">
                <div class="btn-grp">
                    <form method="post" id="" class="" action="">


                    </form>
                </div>
            </div>
            <!-- 왼쪽 메인 밑 부분 -->
            <div class="group-left-down-wrap">
                <div class="left-wrap-down flex-box2">
                    
                    <div class="left-down-text1">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">


                            </form>
                        </div>
                    </div>
                    <div class="left-down-text2">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">


                            </form>
                        </div>
                    </div>
                    <div class="left-down-text3">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">


                            </form>
                        </div>
                    </div>
             
                </div>
             </div>
                
        </div>

        <!-- 오른쪽 관리자 정보 및 스케줄 넣을 부분 -->
        <div class="group-warp-container-right">
            <div class="right-down">
                <div class="group-wrap-up">
                    <div class="group-up">
                        <form method="post" id="" class="" action="">

                        </form>
                    </div>
                </div>
                <!-- 스케줄 넣을 부분 -->
                <div class="group-wrap-down">
                    <div class="group-down">
                        <form method="post" id="" class="" action="">

                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

</body>
<!-- ---------------------------------------------------------------------------------------- -->
<%@ include file = "../include/foot.jspf" %>