<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file ="../include/head.jspf" %>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/group/groupDepartment.css" />

<body>
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