<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/group/groupUserManagement.css" />
<script src="../js/groupUserManagement.js"></script>
 
<body>
        <!-- 중복 부분-------------------------------------------------------------------------------------- -->
        <!-- 왼쪽 메인 부분 -->
        
        <div class="tbl-wrap">

            <div class="group-left-up ">
                <div class="btn-grp ma-bottom2">
                    <form method="post" id="" class="" action="">
                        <span class="float-l">
                            <h2 class="">
                                <i class="fas fa-arrow-alt-square-right font-color2"></i> 재직자
                            </h2>
                        </span>
                        <span class="float-r">
                            <button type="button" class="btn-active margin-l1" id=""
                                onClick="location.href='insa.html'">정보수정</button>
                            <button type="button" class="btn-off margin-l-2" id=""
                                onClick="location.href='insa_register.html'">정보삭제</button>

                        </span>
                        <div class="clearfix"></div>
                    </form>
                </div>
                <table class=" font-size6">
                    <tr class="tr-40 border-top1 left ">
                        <td rowspan="6" class="td-15 center"> 사원 사진 </td>
                        <th class="td-10">성명</th>
                        <td class="td-15">3</td>
                        <th class="td-10">성별</th>
                        <td class="td-20">5</td>
                    </tr>
                    <tr class="tr-40 border-bottom1 tr-color-odd left">
                        <th class="">근무부서</th>
                        <td class="">3</td>
                        <th class="">담당업무</th>
                        <td class="">5</td>
                    </tr>
                    <tr class="tr-40 border-bottom1 tr-color-odd left">
                        <th class="">직위</th>
                        <td class="">3</td>
                        <th class="">휴대전화</th>
                        <td class="">5</td>
                    </tr>
                    <tr class="tr-40 border-bottom1 tr-color-odd left">
                        <th class="">이메일</th>
                        <td class="">3</td>
                        <th class="">내선</th>
                        <td class="">5</td>
                    </tr>
                    <tr class="tr-40 border-bottom1 left">
                        <th class="">근무구분</th>
                        <td class="">3</td>
                        <th class="">입사일</th>
                        <td class="">5</td>
                    </tr>
                </table>

           

                <div class="tabs ma-top4">
                    <nav class="tab-list">
                        <a href="#family" class="tab active">개인정보</a>
                        <a href="#education" class="tab ">학력사항</a>
                        <a href="#career" class="tab">경력사항</a>
                        <a href="#qualification" class="tab">자격면허</a>
                        <a href="#work" class="tab">근무이력</a>

                        <div class="clearfix"></div>
                    </nav>
                    <div id="family" class="tab-content show" >

                        <table class="font-size6">
                            <tr class="tr-40 border-bottom1 border-bottom1 center ">
                                <th class="td-10 bg-color4">생년월일</th>
                                <td class="td-15">3</td>
                                <th class="td-10 bg-color4">근무현황</th>
                                <td class="td-20">5</td>
                            </tr>	
                            <tr class="tr-40 border-bottom1 tr-color-odd center">
                                <th class="bg-color4">취미</th>
                                <td class="">3</td>
                                <th class="bg-color4">특기</th>
                                <td class="">5</td>
                            </tr>
                            <tr class="tr-40 border-bottom1 tr-color-odd center">
                                <th class="bg-color4">주소</th>
                                <td colspan="3">3</td>
        
                            </tr>
        
                        </table>

                        <div class="two-table-info">
                            <span class=""><i class="fas fa-arrow-alt-square-right"></i> 가족관계</span>
                        </div>
                        <table class="table-info-style font-size6 ">
                            <tr class="tr-40 center border-bottom1 border-bottom1 ">
                                <th class="td-10 bg-color4">관계</th>
                                <th class="td-10 bg-color4">성명</th>
                                <th class="td-20 bg-color4">생년월일</th>
                                <th class="td-30 bg-color4">직업</th>
                                <th class="td-40 bg-color4">동기부여</th>

                            </tr>
                            <tr class="tr-40 tr-color-odd center">
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </table>

                    </div>


                    <div id="education" class="tab-content">
                        <table class="font-size6">
                            <tr class="tr-40 center border-bottom1 border-bottom1 ">
                                <th class="td-10 bg-color4">졸업일</th>
                                <th class="td-10 bg-color4">학교명</th>
                                <th class="td-20 bg-color4">전공</th>
                                <th class="td-30 bg-color4">학점</th>
                                <th class="td-40 bg-color4">졸업상태</th>

                            </tr>
                            <tr class="tr-40 tr-color-odd center">
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </table>
                    </div>

                    <div id="career" class="tab-content">
                       
                        <table class="font-size6">
                            <tr class="tr-40 center border-bottom1 border-bottom1 ">
                                <th class="td-10 bg-color4">기간</th>
                                <th class="td-10 bg-color4">직장명</th>
                                <th class="td-20 bg-color4">근무부서</th>
                                <th class="td-30 bg-color4">최종직위</th>
                                <th class="td-40 bg-color4">담당업무</th>

                            </tr>
                            <tr class="tr-40 tr-color-odd center">
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </table>
                    </div>
                    <div id="qualification" class="tab-content">
                      
                        <table class="font-size6">
                            <tr class="tr-40 center border-bottom1 border-bottom1 ">
                                <th class="td-10 bg-color4">자격/면허 명</th>
                                <th class="td-10 bg-color4">취득일자</th>
                                <th class="td-20 bg-color4">발급기관명 </th>
                                <th colspan="2" class="td-30 bg-color4">내용</th>


                            </tr>
                            <tr class="tr-40 tr-color-odd center">
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </table>
                    </div>
                    <div id="work" class="tab-content">
                       
                        <table class="font-size6">
                            <tr class="tr-40 center border-bottom1 border-bottom1 ">
                                <th class="td-10 bg-color4">날짜</th>
                                <th class="td-10 bg-color4">근무부서</th>
                                <th class="td-20 bg-color4">직위</th>
                                <th colspan="2" class="td-40 bg-color4">담당업무</th>


                            </tr>
                            <tr class="tr-40 tr-color-odd center">
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>
   
</body>

<!-- ---------------------------------------------------------------------------------------- -->
<%@ include file = "../include/foot.jspf" %>