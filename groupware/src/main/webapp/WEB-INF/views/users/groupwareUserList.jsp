<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/group/groupwareUserList.css" />
<script src="../js/groupUserManagement.js"></script>
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
                    <span class="float-l">
                        <button type="button" class="btn-active margin-l1" id=""
                            onClick="location.href='insa.html'">전체목록</button>
                        <button type="button" class="btn-off margin-l-2" id=""
                            onClick="location.href='/groupware/groupwareUserDetail'">사원등록</button>
                            <button type="button" class="btn-off margin-l-2" id=""
                            onClick="location.href='/groupware/groupwareUserDetail'">사원 수정</button>
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
            <table>
            
                <tr class="tr-40 center white">
                    <td class="td-5">번호</td>
                    <td class="td-10">부서</td>
                    <td class="td-10">직급</td>
                    <td class="td-10">사원구분</td>
                    <td class="td-15">권한여부</td>
                    <td class="td-5">이름</td>
                    <td class="td-15">이메일</td>
                    <td class="td-5">사내번호</td>
                    <td class="td-20">비고</td>
                </tr>
           <c:forEach items ="${usersList}" var="usersList">
                <tr class="tr-40 tr-color-odd center">
                    <td>${usersList.uid}</td>
                    <td>${usersList.department}</td>
                    <td>${usersList.userRank}</td>
                   	<td>${usersList.userRank}</td>
                   	<td>
                        <!-- <input type="checkbox" name="team_master" class="" /> -->
                        <select class="select-150 ">
                            <option value="0" class="center">권한부여</option>
                            <option value="1">사원</option>
                            <option value="2">팀장</option>
                            <option value="3">부장</option>
                            <option value="4">사장</option>
                            <option value="5">관리자</option>
                        </select>
                    </td>
                    <td>${usersList.userName}</td>
                    <td>${usersList.userEmail}</td>
                    <td>4567</td>
                    <td>테스트 입니다.</td>
                </tr>
               
    
            </c:forEach>
            </table>
            <div class="page-grp center">
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-double-left"></i></a>
                </span>
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-left"></i></a>
                </span>
                <span><a href="#" class="page page-active">1</a></span>
                <span><a href="#" class="page">2</a></span>
                <span><a href="#" class="page">3</a></span>
                <span><a href="#" class="page">4</a></span>
                <span><a href="#" class="page">5</a></span>
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-right"></i></a>
                </span>
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-double-right"></i></a>
                </span>
            </div>
        </div>
</body>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->
