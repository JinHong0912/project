<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/group/groupAdmin.css" />
 <script src="../js/groupAdmin.js"></script>
<%-- <%@ include file = "../include/head.jspf" %> --%>
 <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/style.css">
<body>
        <!-- 중복 부분-------------------------------------------------------------------------------------- -->
        <!-- 왼쪽 메인 부분 -->
    <div class="group-warp-container-left">
            <div class="group-left-up">
                <div class="btn-grp magin-bottom4">
                    <form method="post" id="" class="" action="">
                        <span class="float-l">
                            <button type="button" class="btn-active margin-l1" id=""
                                onClick="location.href='insa.html'">전체목록</button>
                            <button type="button" class="btn-off margin-l-2" id=""
                                onClick="location.href='insa_register.html'">사원등록</button>
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
                <table class="">
                    <tr class="tr-40 center white">
                        <td class="td-5">번호</td>
                        <td class="td-5">부서</td>
                        <td class="td-10">부서코드</td>
                        <td class="td-10">근무부서</td>
                        <td class="td-10">사원구분</td>
                        <td class="td-5">직급</td>
                        <td class="td-15">부서장여부</td>
                        <td class="td-10">사번</td>
                        <td class="td-5">이름</td>
                        <td class="td-20">직종</td>
                    </tr>
                    <tr class="tr-40 tr-color-odd center">
                        <td>1</td>
                        <td>영업1팀</td>
                        <td>영업1팀</td>
                        <td>상임</td>
                        <td>부장</td>
                        <td>8</td>
                        <td><input type="checkbox" name="team_master" class="" /></td>
                        <td><a href="#" class="bold underline">20200602</a></td>
                        <td><a href="#" class="bold underline">최고다</a></td>
                        <td>부장 대리</td>
                    </tr>
                    <tr class="tr-40 tr-color-even center">
                        <td>2</td>
                        <td>영업1팀</td>
                        <td>영업1팀</td>
                        <td>상임</td>
                        <td>부장</td>
                        <td>8</td>
                        <td><input type="checkbox" name="team_master" class="" /></td>
                        <td><a href="#" class="bold underline">20200602</a></td>
                        <td><a href="#" class="bold underline">최저다</a></td>
                        <td>부장 대리</td>
                    </tr>
                    <tr class="tr-40 tr-color-odd center">
                        <td>3</td>
                        <td>영업1팀</td>
                        <td>영업1팀</td>
                        <td>상임</td>
                        <td>부장</td>
                        <td>8</td>
                        <td><input type="checkbox" name="team_master" class="" /></td>
                        <td><a href="#" class="bold underline">20200602</a></td>
                        <td><a href="#" class="bold underline">최중간</a></td>
                        <td>부장 대리</td>
                    </tr>
                </table>
                <div class="page-grp center">
                    <span class="page">
                        <a href="#" class="gray"><i class="fas fa-chevron-double-left li-he1"></i></a>
                    </span>
                    <span class="page">
                        <a href="#" class="gray"><i class="fas fa-chevron-left li-he1"></i></a>
                    </span>
                    <span><a href="#" class="page page-active">1</a></span>
                    <span><a href="#" class="page">2</a></span>
                    <span><a href="#" class="page">3</a></span>
                    <span><a href="#" class="page">4</a></span>
                    <span><a href="#" class="page">5</a></span>
                    <span class="page">
                        <a href="#" class="gray"><i class="fas fa-chevron-right li-he1"></i></a>
                    </span>
                    <span class="page">
                        <a href="#" class="gray"><i class="fas fa-chevron-double-right li-he1"></i></a>
                    </span>
                </div>
            </div>
            <!-- 왼쪽 메인 밑 부분 -->
            <div class="group-left-down-wrap">
                <div class="left-wrap-down flex-box2">
                    
                    <div class="left-down-text1">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">

								문서관리
                            </form>
                        </div>
                    </div>
                    <div class="left-down-text2">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">
							새소식 & 공지 사항
										
                            </form>
                        </div>
                    </div>
                    <div class="left-down-text3">
                        <div class="btn-grp">
                            <form method="post" id="" class="" action="">
                                <div class="tabs">
                                    <nav class="tab-list">
                                        <a href="#notice" class="act-bar1 tab active" id="Noice">개인</a>
                                        <a href="#board" class="act-bar2 tab" id="Board">업무</a>
                                        <a href="#gallery" class="act-bar3 tab" id="Gallery">세미나</a>
                                        <div class="clearfix"></div>
                                    </nav>
                                    <div id="notice" class="tab-content show">
                                       
                                    새소식     일정관리 입니다
                                    </div>
                                    <div id="board" class="tab-content">
                                     
                                    업무관리 입니다
                                    </div>
                                    <div id="gallery" class="tab-content">
                                    일정관리 입니다
                                    </div>
                            
                                </div>
                                
                            </form>
                        </div>
                    </div>
             
                </div>
             </div>
               

        </div>

        <!-- 오른쪽 관리자 정보 및 스케줄 넣을 부분 -->
                <!-- 스케줄 넣을 부분 -->
        <div class="group-warp-container-right">
            <div class="right-down">
                <div class="group-wrap-up">
                    <div class="group-up">
                        <form method="post" id="" class="" action="">
                            	스케줄 넣기
                        </form>
                    </div>
                </div>
                
            </div>
        </div>

    </div>
</body>

</body>

<!-- ---------------------------------------------------------------------------------------- -->
<%@ include file = "../include/foot.jspf" %>