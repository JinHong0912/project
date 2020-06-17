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
                        <button type="button" class="btn-active margin-l1" id="" onClick="location.href='insa.html'">전체목록</button>
                        <button type="button" class="btn-off margin-l-2" id="" onClick="location.href='/groupware/groupwareUserDetail'">사원등록</button>
                            
                    </span>
                    <span class="float-r">
                    	<form method = "post" action="/groupware/groupAdmin">
                    		<select name="searchOpt" id="searchOpt" class="select-150">
								<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
								<option value="userID" <c:if test="${searchOpt eq 'userID'}">selected</c:if>  >아이디</option>
								<option value="userName" <c:if test="${searchOpt eq 'userName'}">selected</c:if> >이름</option>
								<option value="auth" <c:if test="${searchOpt eq 'auth'}">selected</c:if> >권한</option>
							</select> 
								<input type="search" name="words" id="words" class="input-150  bo-blue" value="${words}" />
							<button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
							<button type="button" class="btn-80 bold bo-gray" onClick="javascript:location.href='groupware/groupAdmin' ">목록보기</button>
                    	</form>
                    
                 
                          
                   <%--      <input type="search" class="input-150 margin-l-2" name="words" id="words" value="${words}" required />
                        <button type="submit" class="btn-on margin-r2 margin-l-2" id="">내용검색</button>
                    </span>
                    <div class="clearfix"></div>
                </form> --%>
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
                            <option value="1">일반</option>
                            <option value="2">중간 관리자</option>
                            <option value="3">관리자</option>
                        </select>
                    </td>
                    <td>${usersList.userName}</td>
                    <td>${usersList.userEmail}</td>
                    <td>4567</td>
                    <td>
                     <button type="button" class="btn-off margin-l-2" id="" onClick="location.href=''">수정</button>
                     <button type="button" class="btn-off margin-l-2" id="" onClick="location.href=''">삭제</button>
                     <!--<button type="button" class="btn-off margin-l-2" id="" onClick="location.href='/groupware/groupwareUserDetail'">메일 보내기</button> -->
                    
                    </td>
                </tr>
               
    
            </c:forEach>
            </table>
            <div class="page-grp center">
               <!--  <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-double-left td-line-he1"></i></a>
                </span>
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-left td-line-he1"></i></a>
                </span>
                <span><a href="#" class="page page-active">1</a></span>
                <span><a href="#" class="page">2</a></span>
                <span><a href="#" class="page">3</a></span>
                <span><a href="#" class="page">4</a></span>
                <span><a href="#" class="page">5</a></span>
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-right td-line-he1"></i></a>
                </span>
                <span class="page">
                    <a href="#" class="gray"><i class="fas fa-chevron-double-right td-line-he1"></i></a>
                </span> -->
                <c:forEach begin="1" end="${pageNum}" var="num">
				<span class=""> 
					<a href="/users?num=${num}&template=${template}&mypage=${mypage}" class="page-number member-page-number">${num}</a>	
				</span>
			</c:forEach>
                
            </div>
        </div>
</body>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->
