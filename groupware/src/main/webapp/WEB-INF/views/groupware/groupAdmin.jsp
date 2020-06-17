<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/group/groupAdmin.css" />
<script src="../js/groupAdmin.js"></script>

<body>
	<!-- 중복 부분-------------------------------------------------------------------------------------- -->
	<!-- 왼쪽 메인 부분 -->
	<div class="group-warp-container">
		<div class="group-content-box flex-box2">
			<div class="group-left-up">
				<div class="btn-grp magin-bottom4">
					<form method="post" id="" class="" action="">
						<div class="tabs-one">
							<nav class="tab-list">
								<a href="#notice" class="tab-one active-one">공지사항(8)</a> <a
									href="#newText" class="tab-one ">새글(10)</a> <a
									href="#paymentRequest" class="tab-one">결제요청(11)</a>
								<div class="clearfix"></div>
							</nav>

							<div id="notice" class="tab-one-content show">
								<div class="btn-grp magin-bottom4">
									<form method="post" id="" class="" action="">
										<span class="float-l">
											<button type="button" class="btn-active margin-l1" id=""
												onClick="location.href='insa.html'">전체목록</button>
											<button type="button" class="btn-off margin-l-2" id=""
												onClick="location.href='insa_register.html'">공지작성</button>
										</span> <span class="float-r"> <select name="" id=""
											class="select-150">
												<option>선택하세요</option>
										</select> <input type="text" class="input-150 margin-l-2" name=""
											required />
											<button type="submit" class="btn-on margin-r2 margin-l-2"
												id="">내용검색</button>
										</span>
										<div class="clearfix"></div>
									</form>
								</div>

								<table class="border-color-top2 font-size8">
									<tr class="tr-40 center ">
										<th class="td-5 bg-color8">번호</th>
										<th class="td-5 bg-color8">부서</th>
										<th class="td-5 bg-color8">직급</th>
										<th class="td-5 bg-color8">이름</th>
										<th colspan="4" class="td-50 bg-color8">내용</th>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>1</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
										<td>[공지사항]테스트 입니다</td>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>1</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
										<td>[공지사항]테스트 입니다</td>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>1</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
										<td>[공지사항]테스트 입니다</td>
									</tr>
								</table>


							</div>


							<div id="newText" class="tab-one-content ">
								<div class="btn-grp magin-bottom4">
									<form method="post" id="" class="" action="">
										<span class="float-l">
											<button type="button" class="btn-active margin-l1" id=""
												onClick="location.href='insa.html'">전체목록</button>
											<button type="button" class="btn-off margin-l-2" id=""
												onClick="location.href='insa_register.html'">새글작성</button>
										</span> <span class="float-r"> <select name="" id=""
											class="select-150">
												<option>선택하세요</option>
										</select> <input type="text" class="input-150 margin-l-2" name=""
											required />
											<button type="submit" class="btn-on margin-r2 margin-l-2"
												id="">내용검색</button>
										</span>
										<div class="clearfix"></div>
									</form>
								</div>

								<table>
									<tr class="tr-40 center ">
										<th class="td-5 bg-color8">번호</th>
										<th class="td-5 bg-color8">부서</th>
										<th class="td-5 bg-color8">직급</th>
										<th class="td-5 bg-color8">이름</th>
										<th colspan="4" class="td-50 bg-color8">내용</th>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>1</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
										<td>[공지사항]테스트 입니다</td>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>1</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
										<td>[공지사항]테스트 입니다</td>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>1</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
										<td>[공지사항]테스트 입니다</td>
									</tr>
								</table>
							</div>
							<div id="paymentRequest" class="tab-one-content">일정관리
								입니다232131</div>

						</div>
					</form>
				</div>
			</div>
			<div class="group-right-up">
				<div class="btn-grp ">
					<form method="post" id="" class="" action="">
						<div class="right-up-two-box">
							<div class="right-up-drafting-box flex-box2 border-color-bottom1">

								<div class="right-up-drafting-l">
									<h2 class="">
										<i class="fas fa-circle font-size7"></i> 내가 올린 기안
									</h2>
								</div>
								<div class="right-up-drafting-r">
									<h3 class="">더보기</h3>
								</div>

							</div>

							<div class="right-up-table">
								<table class="font-size8">
									<tr class="tr-40 left ">
										<th colspan="4" class="bg-color8 td-50 font-size4 line-he1">
											EGW 핸디소프트 UX/UI 개선 프로젝트</th>

										<th class="td-50 bg-color8 td-10 right font-size4">6/16</th>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>보류</td>
										<td>[공지사항]테스트 입니다</td>
										<td>디자인</td>
										<td>팀장</td>
										<td>김그린</td>
									</tr>

								</table>

							</div>

							<div
								class="right-up-drafting-box flex-box2 border-color-bottom1 magin-top3">

								<div class="right-up-drafting-l">
									<h2 class="">
										<i class="fas fa-circle font-size7"></i> 내가 올린 프로젝트
									</h2>
								</div>
								<div class="right-up-drafting-r">
									<h3 class="">더보기</h3>
								</div>

							</div>

							<div class="right-up-table">
								<table class="font-size8">
									<tr class="tr-40 left ">
										<th colspan="4" class="bg-color8 td-50 font-size4 line-he1">EGW
											핸디소프트 UX/UI 개발 기능 테스트</th>

										<th class="td-50 bg-color8 td-10 right font-size4">6/25</th>
									</tr>
									<tr class="tr-40 tr-color-odd center">
										<td>심사</td>
										<td>[공지사항]테스트 입니다</td>
										<td>영업</td>
										<td>사원</td>
										<td>김동물</td>
									</tr>

								</table>

							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
		<!-- 왼쪽 메인 밑 부분 -->
		<div class="group-left-down-wrap">
			<div class="left-wrap-down flex-box2">

				<div class="left-down-text1">
					<div class="btn-grp">
						<form method="post" id="" class="" action="">
							<div class="tabs-two">
								<nav class="tab-list">
									<a href="#mailStatus" class="tab-two active-two">사원현황(1)</a> <a
										href="#everyText" class="tab-two">최근매일(10)</a> <a
										href="#mailReceived" class="tab-two">받은메일(10)</a> <a
										href="#mailEmergency" class="tab-two">긴급메일(1)</a>
									<div class="clearfix"></div>
								</nav>
								<div id="mailStatus" class="tab-two-content show">
									<div class="btn-grp magin-bottom4">
										<form method="post" id="" class=""	action="/groupware/groupAdmin">
											<span class="float-l">
												<button type="button" class="btn-active margin-l1" onClick="javascript:location.href='/groupware/groupAdmin'">목록보기</button>
												<button type="button" class="btn-off margin-l-2" id=""
													onClick="location.href='/groupware/groupwareUserList'">사원관리</button>
											</span> <span class="float-r"> <select name="" id=""
												class="select-150">
													<option value="all"
														<c:if test="${searchOpt eq 'all'}">selected</c:if>>전체</option>
													<option value="userID"
														<c:if test="${searchOpt eq 'userID'}">selected</c:if>>아이디</option>
													<option value="userName"
														<c:if test="${searchOpt eq 'userName'}">selected</c:if>>이름</option>
													<option value="auth"
														<c:if test="${searchOpt eq 'auth'}">selected</c:if>>권한</option>
											</select> 
											<input type="search" class="input-150 bo-blue" name="words"	id="words" value="${words}" required />
											<button type="submit" class="btn-on margin-r2 margin-l-2" id="">내용검색</button>
												
											</span>
											<div class="clearfix"></div>
										</form>
									</div>

									<table class="border-color-top2 font-size8">
										<tr class="tr-40 center">
											<th class="td-5 bg-color8">번호</th>
											<th class="td-10 bg-color8">부서</th>
											<th class="td-10 bg-color8">직급</th>
											<th class="td-10 bg-color8">사번</th>
											<th class="td-20 bg-color8">권한</th>
											<th class="td-10 bg-color8">이름</th>
											<th class="td-40 bg-color8">채용 형태</th>

										</tr>

										<c:forEach items="${usersList}" var="usersList">
											<tr class="tr-40 tr-color-odd center">

												<td>${usersList.uid}</td>
												<td>${usersList.department}</td>
												<td><a href="#" class="bold underline">${usersList.userRank}</a></td>
												<td>부장</td>
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
												<td><a href="#" class="bold underline">${usersList.userName}</a></td>
												<td>공개 채용으로 입사하였습니다.</td>


											</tr>

										</c:forEach>
									</table>
								</div>
								<div id="everyText" class="tab-two-content">일정관리 입니다232131
								</div>

								<div id="mailReceived" class="tab-two-content">
									<div class="btn-grp magin-bottom4">
										<form method="post" id="" class="" action="">
											<span class="float-l">
												<button type="button" class="btn-active margin-l1" id=""
													onClick="location.href='insa.html'">전체목록</button>
												<button type="button" class="btn-off margin-l-2" id=""
													onClick="location.href='insa_register.html'">사원등록</button>
											</span> <span class="float-r"> <select name="" id=""
												class="select-150">
													<option>선택하세요</option>
											</select> <input type="text" class="input-150 margin-l-2" name=""
												required />
												<button type="submit" class="btn-on margin-r2 margin-l-2"
													id="">내용검색</button>
											</span>
											<div class="clearfix"></div>
										</form>
									</div>
									<table>
										<tr class="tr-40 center white underline">
											<td class="td-5">번호</td>
											<td class="td-5">부서</td>
											<td class="td-10">부서코드</td>
											<td class="td-5">사원구분</td>
											<td class="td-5">직급</td>
											<td class="td-5">부서장여부</td>
											<td class="td-10">사번</td>
											<td class="td-5">이름</td>

										</tr>
										<tr class="tr-40 tr-color-odd center">
											<td>1</td>
											<td>영업1팀</td>
											<td>상임</td>
											<td>부장</td>
											<td>8</td>
											<td><input type="checkbox" name="team_master" class="" /></td>
											<td><a href="#" class="bold underline">20200602</a></td>
											<td><a href="#" class="bold underline">최고다</a></td>

										</tr>


									</table>

								</div>

								<div id="mailEmergency" class="tab-two-content">
									<div class="btn-grp magin-bottom4">
										<form method="post" id="" class="" action="">
											<span class="float-l">
												<button type="button" class="btn-active margin-l1" id=""
													onClick="location.href='insa.html'">전체목록</button>
												<button type="button" class="btn-off margin-l-2" id=""
													onClick="location.href='insa_register.html'">사원등록</button>
											</span> <span class="float-r"> <select name="" id=""
												class="select-150">
													<option>선택하세요</option>
											</select> <input type="text" class="input-150 margin-l-2" name=""
												required />
												<button type="submit" class="btn-on margin-r2 margin-l-2"
													id="">내용검색</button>
											</span>
											<div class="clearfix"></div>
										</form>
									</div>
									<table>
										<tr class="tr-40 center white underline">
											<td class="td-5">번호</td>
											<td class="td-5">부서</td>
											<td class="td-10">부서코드</td>
											<td class="td-5">사원구분</td>
											<td class="td-5">직급</td>
											<td class="td-5">부서장여부</td>
											<td class="td-10">사번</td>
											<td class="td-5">이름</td>

										</tr>
										<tr class="tr-40 tr-color-odd center">
											<td>1</td>
											<td>영업1팀</td>
											<td>상임</td>
											<td>부장</td>
											<td>8</td>
											<td><input type="checkbox" name="team_master" class="" /></td>
											<td><a href="#" class="bold underline">20200602</a></td>
											<td><a href="#" class="bold underline">최고다</a></td>

										</tr>

										ㅇㄴㅁㅇㄴㅁㅇㄴㅁ
									</table>
								</div>
							</div>

						</form>
					</div>
				</div>

				<div class="left-down-text2">
					<div class="btn-grp">
						<form method="post" id="" class="" action="">
							<div class="tabs">
								<nav class="tab-list">
									<a href="#board1" class="tab">일정</a> <a href="#notice1"
										class="tab active">예정일정</a> <a href="#gallery1" class="tab">팀일정</a>
									<div class="clearfix"></div>
								</nav>

								<div id="board1" class="tab-content">업무관리 입니다2312312</div>
								ㅇㄴㅁㅇ

								<div id="notice1" class="tab-content show"></div>
								<div id="gallery1" class="tab-content">일정관리 입니다232131</div>

							</div>

						</form>
					</div>
				</div>

			</div>
		</div>


	</div>


	</div>
</body>

<!-- ---------------------------------------------------------------------------------------- -->
<%@ include file="../include/foot.jspf"%>