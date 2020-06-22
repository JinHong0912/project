<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/group/groupUserView.css" />
<script src="../js/groupUserView.js"></script>
 
<body>
        <!-- 중복 부분-------------------------------------------------------------------------------------- -->
        <!-- 왼쪽 메인 부분 -->
  
        <div class="tbl-wrap">
            <div class="btn-grp">
                <form method="post" id="" class="" action="">
    
                    <!-- ----------------------------------------------------------- -->
    <%--                 <input type="text" name="detail_id" value="${sessionScope.uid}" /> --%>
                     <input type="text" name="uid" value="${sessionScope.uid}" />
                    <!-- ----------------------------------------------------------- -->
                    <span class="float-l">
                        <button type="button" class="btn-active margin-l1" id=""
                            onClick="location.href='/groupware/groupwareUserList'">전체목록</button>
                        <!-- <button type="button" class="btn-off margin-l-2" id=""
                            onClick="location.href='insa_register.html'">사원등록</button> -->
                    </span>
                    <span class="float-r">
                        <a href="#personalIdentity" class="btn-off tab display-style margin-l-3 active" id="">개인신상</a>
                        <a href="#work" class="btn-off tab display-style margin-l-3" id="">근무사항</a>
                        <a href="#qualification" class="btn-off tab display-style margin-l-3" id="">자격사항</a>
                        <!-- <a href="#languageStudy" class="btn-off tab display-style margin-l-3" id="">어학사항</a> -->
                        <a href="#militaryService" class="btn-off tab display-style margin-l-3" id="">병역사항</a>
                    </span>
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="">
                <h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i> 사원 정보 입니다.</h3>
                <%--         <input type="hidden" name="audit_id" value="${auditId}" /> --%>
            </div>
            <!-- 개인 신상 -->
            <form method="post" action="/groupware/setUserNewInfo">
                <div id="personalIdentity" class="tab-content show">
                    <table>
                        <tr style="width:100%;height:1px;background-color:#eee;">
                            <td colspan="10"></td>
                        </tr>
                        <tr  class="center" style="width:100%;height:1px;">
                            <td class="td-13" rowspan="10">
                                사원 사진
                            </td>
                        </tr>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">사원아이디</td>
                            <td class="td-13 padding-lr5">
                                ${usersView.userID}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">사원 비밀번호</td>
                            <td class="td-13 padding-lr5">
                                ${usersView.passwd}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">회사 사번</td>
                            <td class="td-13 padding-lr5">
                                ${usersView.companyNumber}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">권한 부여</td>
                            <td class="td-13 padding-lr5" colspan="2">${usersView.auth}</td>
                        </tr>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">사원명/성별</td>
                            <td class="td-13 padding-lr5">
                                ${usersView.userName} : ${usersInfo.grp_userGender} 
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">생년월일</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_userBirth} : ( ${usersInfo.grp_lunarCalendar} )
                            </td>
                            
                            <td class="td-7 center underline td-color-01 noto bold">직급</td>
                            <td class="td-13 padding-lr5">
                                ${usersView.userRank}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">부서</td>
                            <td class="td-13 padding-lr5" colspan="2">
                                ${usersView.department}
                            </td>
    
                        </tr>
                        <tr class="tr-35 font-size6">
                            
                         
                            <td class="td-7 center underline td-color-01 noto bold">C.P</td>
                            <td class="td-13 padding-lr5">
                                ${usersView.userPhone}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">내선번호</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_extension} - ${usersInfo.grp_extensionNumber}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">Tel</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_tele} - ${usersInfo.grp_telephone}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">이메일</td>
                            <td class="td-13 padding-lr5" colspan="2">
                                ${usersView.userEmail}
                            </td>
                        </tr>
                        <!-- -->
                        <tr style="width:100%;height:1px;background-color:#eee;">
                            <td colspan="10"></td>
                        </tr>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">채용형태</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_recruitment}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">희망직무</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_hopeJob}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">키/몸무게</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_userHeight} cm  /  ${usersInfo.grp_userWeight}kg
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">병역구분</td>
                            <td class="td-13 padding-lr5" colspan="2">
                                ${usersInfo.grp_militaryService}
                            </td>
                            
                        </tr>
                        <!---->
                        <tr style="width:100%;height:1px;background-color:#eee;">
                            <td colspan="10"></td>
                        </tr>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">취미</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_userHobby}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">특기</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_userSpecialty}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">종교</td>
                            <td class="td-13 padding-lr5" >
                                ${usersInfo.grp_disabledCk}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">보훈대상자여부</td>
                            <td class="td-13 padding-lr5" colspan="2">
                                ${usersInfo.grp_veteransCk}
                            </td>
                            
                        </tr>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">결혼여부</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_marriageCk}
                            </td>

                            <td class="td-7 center underline td-color-01 noto bold">장애인여부</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_finalEducation}
                            </td>
                           

                        </tr>
                        
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">최종학력</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_graduationYear}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">졸업년도</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_graduate}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">졸업학과</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_grades}
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">대학교</td>
                            <td class="td-13 padding-lr5">
                                ${usersInfo.grp_university}
                            </td>
                            <!-- <td class="td-7 center underline td-color-01 noto bold">학점</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="grp_grades" id="grp_grades" class="width-100 noto" />
                            </td> -->
                          
                        </tr>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">가족관계</td>
                            <td class="td-13 padding-lr5 padding-tb2" colspan="9">
                                <textarea name="grp_graduation" id="grp_graduation" class="width-100 height-100 noto padding-a5"
                                    placeholder="가족 관계를 입력하세요. ex) 가족관계 / 성함 / 직업">${usersInfo.grp_graduation}</textarea>
                            </td>
                        </tr>
                        <tr style="width:100%;height:1px;background-color:#eee;">
                            <td colspan="10"></td>
                        </tr>
                        <!---->
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">내용</td>
                            <td class="td-13 padding-lr5 padding-tb2" colspan="9">
                                <textarea name="grp_aboutMe" id="grp_aboutMe" class="width-100 height-100 noto padding-a5"
                                    placeholder="하고 싶은 말을 적으세요.">${usersInfo.grp_aboutMe}</textarea>
                            </td>
                        </tr>
                        <tr style="width:100%;height:1px;background-color:#eee;">
                            <td colspan="10"></td>
                        </tr>
                    </table>
                    <div class="btn-grp center margin-t10">
                        <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                        <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                    </div>
                 </form>
                </div>
    
                <!-- 가족사항 -->
    
                <!-- 학력사항 -->
    
    
                <!-- 근무사항 // -->
                <div id="work" class=" tab-content">
                    <form method="post" action="">
                        <table>
                            <tr class="tr-35 font-size6">
                                <td class="td-7 center underline td-color-01 noto bold">근무날짜</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">근무부서</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">직위</td>
    
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">담당업무</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">내용</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                            </tr>
                        </table>
                        <div class="btn-grp center margin-t10">
                            <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                            <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                        </div>
                    </form>
                </div>
    
                <!-- 자격사항 //-->
                <div id="qualification" class="tab-content">
                    <form method="post" action="">
                        <table>
                            <tr class="tr-35 font-size6">
                                <td class="td-7 center underline td-color-01 noto bold">자격</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">면허명</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">취득일자</td>
    
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">발급기관명</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">내용</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="" id="" class="width-100 noto" />
                                </td>
                            </tr>
                        </table>
                        <div class="btn-grp center margin-t10">
                            <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                            <button type="reset" class="btn-off  margin-l-2" id="">새로고침</button>
                        </div>
                    </form>
                </div>
    
                        <!-- 어학사항 // 기입하기 -->
                        <!-- <div id="languageStudy" class="tab-content"> 
                            <form method="post" action="">
                                <table> 
                                    <tr class="tr-35 font-size6"> 
                                        <td class="td-7 center underline td-color-01 noto bold">자격</td> 
                                        <td class="td-13 padding-lr5"> 
                                            <input type="text" name="" id="" class="width-100 noto" /> 
                                        </td> 
                                        <td class="td-7 center underline td-color-01 noto bold">면허명</td> 
                                        <td class="td-13 padding-lr5">
                                            <input type="text" name="" id="" class="width-100 noto" /> 
                                        </td> 
                                        <td class="td-7 center underline td-color-01 noto bold">취득일자</td> 
    
                                        <td class="td-13 padding-lr5"> 
                                            <input type="text" name="" id="" class="width-100 noto" /> 
                                        </td> 
                                        <td class="td-7 center underline td-color-01 noto bold">발급기관명</td> 
                                        <td class="td-13 padding-lr5"> 
                                            <input type="text" name="" id="" class="width-100 noto" /> 
                                        </td>
                                        <td class="td-7 center underline td-color-01 noto bold">내용</td> 
                                        <td class="td-13 padding-lr5"> 
                                            <input type="text" name="" id="" class="width-100 noto" /> 
                                        </td> 
                                    </tr> 
                                </table> 
                                <div class="btn-grp center margin-t10"> 
                                    <button type="submit" class="btn-active margin-l1" id="">내용저장</button> 
                                    <button type="reset" class="btn-off tab margin-l-2" id="">새로고침</button> 
                                </div> 
                            </form> 
                        </div>  -->
                <!-- 병력사항 // 확인해서 기제 하기-->
                <div id="militaryService" class="tab-content">
                    <form method="post" action="">
                        <table>
                            <tr class="tr-35 font-size6">
                                <td class="td-7 center underline td-color-01 noto bold">군별</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="mp_militaryGroup" id="mp_militaryGroup"
                                        class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">계급</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="mp_militaryRank" id="mp_militaryRank" class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">입영일자</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="mp_enlistmentDate" id="mp_enlistmentDate"
                                        class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">전역일자</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="mp_dischargeDate" id="mp_dischargeDate"
                                        class="width-100 noto" />
                                </td>
                                <td class="td-7 center underline td-color-01 noto bold">전역사요</td>
                                <td class="td-13 padding-lr5">
                                    <input type="text" name="mp_dischargeContents" id="mp_dischargeContents"
                                        class="width-100 noto" />
                                </td>
                            </tr>
                        </table>
                        <div class="btn-grp center margin-t10">
                            <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                            <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                        </div>
                    </form>
                </div>
        </div>s

<!-- ---------------------------------------------------------------------------------------- -->
<%@ include file = "../include/foot.jspf" %>