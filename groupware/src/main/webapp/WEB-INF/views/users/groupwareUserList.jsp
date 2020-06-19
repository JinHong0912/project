<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="../css/group/groupwareUserList.css" />
<script src="../js/groupwareUserList.js"></script>
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
                <!-- 처음 -->
                <span class="float-l ma-bottom5">
                    <button type="button" class="btn-active margin-l1" id=""
                        onClick="javascript:location.href='/groupware/groupwareUserList'">전체목록</button>
                    <button type="button" class="btn-off margin-l-2" id=""
                        onClick="location.href='/groupware/groupwareUserDetail'">사원등록</button>
                    <span class="info-sName gray td-line-he1"> <strong>[총 사원 수는 : ${usersCount} 명 입니다.] </strong></span>
                </span>
                <span class="float-r">
                    <form method="post" action="/groupware/groupwareUserList">
                        <select name="searchOpt" id="searchOpt" class="select-150 ">
                            <option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
                            <option value="department" <c:if test="${searchOpt eq 'department'}">selected</c:if> >부서
                            </option>
                            <option value="userID" <c:if test="${searchOpt eq 'userID'}">selected</c:if> >아이디</option>
                            <%-- 								<option value="userName" <c:if test="${searchOpt eq 'userName'}">selected</c:if> >이름</option> --%>
                        </select>
                        <input type="search" name="words" id="words" class="input-150  bo-blue" value="${words}" />
                        <button type="submit" id="search-btn" class="btn-on bold bo-blue">검색</button>
                        <!-- 							<button type="button" class="btn-80 bold bo-gray" onClick="javascript:location.href='/groupware/groupwareUserList' ">목록보기</button> -->
                        <div class="clearfix"></div>
                    </form>



                    <%--      <input type="search" class="input-150 margin-l-2" name="words" id="words" value="${words}" required />
                        <button type="submit" class="btn-on margin-r2 margin-l-2" id="">내용검색</button>
                    </span>
                </form> --%>
        </div>
        <table>

            <tr class="tr-40 center white">
                <td class="td-5">번호</td>
                <td class="td-10">부서</td>
                <td class="td-10">직급</td>
                <td class="td-10">이름</td>
                <td class="td-5">사내번호</td>
                <td class="td-10">휴대번호</td>
                <td class="td-15">이메일</td>
                <td class="td-15">권한여부</td>
                <td class="td-20">비고</td>
            </tr>
            <c:forEach items="${usersList}" var="usersList">
                <tr class="tr-40 tr-color-odd center">
                    <td>${usersList.uid}</td>
                    <td>${usersList.department}</td>
                    <td>${usersList.userRank}</td>
                    <td>
                    <a href="/groupware/groupUserView?detail_id=${usersList.uid}"  class="">${usersList.userName}</a>
                    </td>
                    <td>4567</td>
                    <td>${usersList.userPhone}</td>
                    <td>${usersList.userEmail}</td>
                        <!-- 권한부여 나중에 사용시 사용<input type="checkbox" name="team_master" class="" /> -->
                    <td class="">
                        <select class="select-150" id="auth" onChange ="authUpdate(this.value,'${usersList.uid}');"
                        <c:if test="${usersList.auth eq '관리자'}">disabled</c:if>><!--disabled : 관리자는 권한 변경 안되게 하는거 -->
                       		 <option value="일반"
                       		 	<c:if test="${usersList.auth eq '일반'}">selected</c:if>>일반</option>
                            <option value="중간관리자"
                            	<c:if test="${usersList.auth eq '중간관리자'}">selected</c:if>>중간 관리자</option>
                            <option value="관리자"
                            	<c:if test="${usersList.auth eq '관리자'}">selected</c:if>>관리자</option>
                        </select>
                    </td>
                    <td>
                        <button type="button" class="btn-off margin-l-2" id="" onClick="location.href=''">수정</button>
                        <button type="button" class="btn-off margin-l-2" id="" onClick="location.href=''">삭제</button>
                        <!--<button type="button" class="btn-off margin-l-2" id="" onClick="location.href='/groupware/groupwareUserDetail'">메일 보내기</button> -->

                    </td>
                </tr>


            </c:forEach>
        </table>
        <div class="page-grp center">
            <!--                 	버튼 기호 -->
            <span class="page">
                <a href="#" class="gray"><i class="fas fa-chevron-double-left td-line-he1"></i></a>
            </span>
            <span class="page">
                <a href="#" class="gray"><i class="fas fa-chevron-left td-line-he1"></i></a>
            </span>
            <c:forEach begin="1" end="${pageNum}" var="num">
                <!--                 	버튼 번호 -->
                <span class="">
                    <a class="page page-active"
                        href="/groupware/groupwareUserList?num=${num}&searchOpt=${searchOpt}&words=${words}&template=${template}&mypage=${mypage}"
                        class="page-active-num">${num}</a>
                </span>
            </c:forEach>
            <!--                 	버튼 기호 -->
            <span class="page">
                <a href="#" class="gray"><i class="fas fa-chevron-right td-line-he1"></i></a>
            </span>
            <span class="page">
                <a href="#" class="gray"><i class="fas fa-chevron-double-right td-line-he1"></i></a>
            </span>

        </div>
    </div>
</body>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->