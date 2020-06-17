<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/group/groupwareUserInsa_register.css" />
<script src="../js/groupwareUserInsa_register.js"></script>

<body>
    <!-- 중복 부분-------------------------------------------------------------------------------------- -->
    <div class="tbl-wrap">
        <div class="btn-grp">
            <form method="post" id="" class="" action="">

                <!-- ----------------------------------------------------------- -->
                <!-- ----------------------------------------------------------- -->
                <span class="float-l">
                    <button type="button" class="btn-active margin-l1" id=""
                        onClick="location.href='/groupware/groupwareUserList'">전체목록</button>
                    <button type="button" class="btn-off margin-l-2" id=""
                        onClick="location.href='insa_register.html'">사원등록</button>
                </span>
                <span class="float-r ">
                    <a href="#personalIdentity" class="btn-off display-style margin-l-3 active" id="">개인신상</a>
                    <a href="#family" class="btn-off display-style margin-l-3" id="">가족사항</a>
                    <a href="#education" class="btn-off display-style margin-l-3" id="">학력사항</a>
                    <a href="#work" class="btn-off display-style margin-l-3" id="">근무사항</a>
                    <a href="#qualification" class="btn-off display-style margin-l-3" id="">자격사항</a>
                    <a href="#languageStudy" class="btn-off display-style margin-l-3" id="">어학사항</a>
                    <a href="#militaryService" class="btn-off display-style margin-l-3" id="">병역사항</a>
                </span>
                <div class="clearfix"></div>
            </form>
        </div>
        <div class="">
            <h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i> 신상정보</h3>
        </div>
        <!-- 개인 신상 -->
        <form method="post" action="">
            <div id="personalIdentity" class="info show">
                <table>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35 font-size6 ">
                        <td class="td-7 center underline td-color-01 noto bold">사원명/성별</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-50 noto" required autofocus />
                            <select name="" id="" class="width-50 height-30">
                                <option>남자</option>
                                <option>여자</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">생년월일</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-50 noto" />
                            <select name="" id="" class="width-50 height-30">
                                <option>양력</option>
                                <option>음력</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">C.P</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-30 height-30">
                                <option>010</option>
                                <option>011</option>
                            </select>
                            <input type="text" name="" id="" class="width-70 noto" required />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">내선번호</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-30 height-30">
                                <option>051</option>
                            </select>
                            <input type="text" name="" id="" class="width-70 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">Tel</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-30 height-30">
                                <option>051</option>
                            </select>
                            <input type="text" name="" id="" class="width-70 noto" />
                        </td>
                    </tr>
                    <!-- -->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">채용형태</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option>공개채용</option>
                                <option>특별채용</option>
                                <option>수시채용</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">희망직무</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">키/몸무게</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-50 noto" placeholder="cm" />
                            <input type="text" name="" id="" class="width-50 noto" placeholder="kg" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">병역구분</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option>병역필</option>
                                <option>병역미필</option>
                                <option>공익</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">종교</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option>무교</option>
                                <option>불교</option>
                                <option>기독교</option>
                            </select>
                        </td>
                    </tr>
                    <!---->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">취미</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">특기</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">장애인여부</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option>비장애</option>
                                <option>장애</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">보훈대상자여부</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option>비대상</option>
                                <option>대상</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">결혼여부</td>
                        <td class="td-13 padding-lr5">
                            <select name="" id="" class="width-100 height-30">
                                <option>미혼</option>
                                <option>기혼</option>
                            </select>
                        </td>
                    </tr>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <!---->
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">비고</td>
                        <td class="td-13 padding-lr5 padding-tb2" colspan="9">
                            <textarea name="" id="" class="width-100 height-100 noto padding-a5"></textarea>
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
            </div>

            <!-- 가족사항 -->
            <div id="family" class="info">
                <table>
                    <form method="post" action="">
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">관계</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">성명</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">생년월일</td>

                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">직업</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">동기부여</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                        </tr>
                </table>
                <div class="btn-grp center margin-t10">
                    <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                    <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                </div>
            </div>
        </form>
        <!-- 학력사항 -->
        <div id="education" class="info">
            <form method="post" action="">
                <table>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">졸업일</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">학교명</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">전공</td>

                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">학점</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">졸업상태</td>
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

        <!-- 근무사항 // -->
        <div id="work"" class=" info">
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
        <div id="qualification" class="info">
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
                    <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                </div>
            </form>
        </div>

        <!-- 어학사항 // 기입하기-->
        <div id="languageStudy" class="info">
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
                    <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                </div>
            </form>
        </div>
        <!-- 병력사항 // 확인해서 기제 하기-->
        <div id="militaryService" class="info">
            <form method="post" action="">
                <table>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">졸업일</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">학교명</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">전공</td>

                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">학점</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="" id="" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">졸업상태</td>
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
    </div>
   
    <!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->
</body>