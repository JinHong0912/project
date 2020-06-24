<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/group/groupwareUserDetail.css" />
<script src="../js/groupwareUserDetail.js"></script>

<body>
	<!-- 중복 부분-------------------------------------------------------------------------------------- -->

	<div class="tbl-wrap">
		<div class="btn-grp">
			<form method="post" id="" class="" action="">

				<!-- ----------------------------------------------------------- -->
				<input type="text" name="uid" value="${sessionScope.uid}" />

				<!-- ----------------------------------------------------------- -->
				<span class="float-l">
					<button type="button" class="btn-active margin-l1" id=""
						onClick="location.href='/groupware/groupwareUserList'">전체목록</button>
					<!-- <button type="button" class="btn-off margin-l-2" id=""
                        onClick="location.href='insa_register.html'">사원등록</button> -->
				</span>
				<span class="float-r ">
					<a href="#personalIdentity" class="btn-off display-style margin-l-3 active" id="">개인신상</a>
					<a href="#work" class="btn-off display-style margin-l-3" id="">근무사항</a>
					<a href="#qualification" class="btn-off display-style margin-l-3" id="">자격사항</a>
					<!-- <a href="#languageStudy" class="btn-off display-style margin-l-3" id="">어학사항</a> -->
					<a href="#militaryService" class="btn-off display-style margin-l-3" id="">병역사항</a>
				</span>
				<div class="clearfix"></div>
			</form>
		</div>
		<div class="">
			<h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i> 개인 신상 정보</h3>
				<input type="hidden" name="udid" value="${sessionScope.uid}" />
			
		</div>
		<!-- 개인 신상 -->
		<form method="post" action="/groupware/groupDetailUpdate">
			<input type="hidden" name="uid" value="${usersView.uid}" />
			<input type="hidden" name="udid" value="${usersView.uid}" />
			<div id="personalIdentity" class="info show">
				<table>
					<tr style="width: 100%; height: 1px; background-color: #eee;">
						<td colspan="10"></td>
					</tr>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">회사 사번</td>
						<td colspan="3" class="td-13 center padding-lr5 bold">
							${usersView.companyNumber}</td>
						<td class="td-7 center underline td-color-01 noto bold">권한 부여</td>
						<td colspan="5" class="td-13 padding-lr5 center bold noto">${usersView.auth}</td>
					</tr>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">사원아이디</td>
						<td class="td-13 padding-lr5">${usersView.userID}</td>
						<td class="td-7 center underline td-color-01 noto bold">사원
							비밀번호</td>
						<td class="td-13 padding-lr5"><input type="text" name="passwd" id="userName"
								class="width-100 noto" autofocus />
						</td>
						<td class="td-7 center underline td-color-01 noto bold">부서</td>
						<td class="td-13 padding-lr5"><input type="text" name="department" id="" class="width-100 noto"
								value="${usersView.department}" autofocus />
							<!-- <select name="department" id="department" class="width-50 height-30">
								<option value="0">부서를 선택하세요</option>
								<option value="인사팀">인사팀</option>
								<option value="기획팀">기획팀</option>
								<option value="관리팀">관리팀</option>
							</select> -->
						</td>
						<td class="td-7 center underline td-color-01 noto bold">직급</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="userRank" id="userRank" class="width-100 noto" value="${usersView.userRank}" autofocus /> 
							<!-- <select name="userRank" id="userRank" class="width-50 height-30">
								<option value="0">직급을 선택하세요</option>
								<option value="사원">사원</option>
								<option value="부장">부장</option>
								<option value="사장">사장</option>
								<option value="관리자">관리자</option>
							</select> -->
						</td>
						<td class="td-7 center underline td-color-01 noto bold">이메일</td>
						<td class="td-13 padding-lr5"><input type="text" name="userEmail" id="userEmail"
								class="width-100 noto" value="${usersView.userEmail}" autofocus /></td>

					</tr>
					<tr class="tr-35 font-size6 ">
						<td class="td-7 center underline td-color-01 noto bold">사원명/성별</td>
						<td class="td-13 padding-lr5"><input type="text" name="userName" id="userName"
								class="width-50 noto" value="${usersView.userName}" autofocus />
							<select name="grp_userGender" id="userGender" class="width-50 height-30">
								<option value="0">남자</option>
								<option value="1">여자</option>
							</select></td>
						<td class="td-7 center underline td-color-01 noto bold">생년월일</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_userBirth" id="grp_userBirth"
								class="width-50 noto" value=" ${usersInfo.grp_userBirth}" /> <select
								name="grp_lunarCalendar" id="lunarCalendar" class="width-50 height-30">
								<option value="0">양력</option>
								<option value="1">음력</option>
							</select></td>
						<td class="td-7 center underline td-color-01 noto bold">C.P</td>
						<td class="td-13 padding-lr5"><input type="text" name="userPhone" id="userPhone"
								class="width-100 noto" value="${usersView.userPhone}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">내선번호</td>
						<td class="td-13 padding-lr5 font-wei1 noto bold">
<!-- 							<select name="grp_extension" id="grp_extension" class="width-30 height-30"> -->
<!-- 								<option value="051">051</option> -->
<!-- 							</select> -->
<!-- 							<input type="text" name="grp_extensionNumber" id="grp_extensionNumber" -->
<!-- 								class="width-70 noto" /> -->
							${usersInfo.grp_extension} - ${usersInfo.grp_extensionNumber}
						</td>
						<td class="td-7 center underline td-color-01 noto bold">Tel</td>
						<td class="td-13 padding-lr5 noto">
								<select name="tele" id="tele" class="width-30 height-30">
										<option value="0">051</option>
								</select> 
							<input type="text" name="telephone" id="telephone" class="width-70 noto" value="${usersInfo.grp_telephone}"/>
						</td>
					</tr>
					<!-- -->
					<tr style="width: 100%; height: 1px; background-color: #eee;">
						<td colspan="10"></td>
					</tr>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">채용형태</td>
						<td class="td-13 padding-lr5 bold noto">
<!-- 							<select name="grp_recruitment" id="grp_recruitment" class="width-100 height-30"> -->
<!-- 								<option value="인턴채용">인턴채용</option> -->
<!-- 								<option value="공개채용">공개채용</option> -->
<!-- 								<option value="특별채용">특별채용</option> -->
<!-- 								<option value="수시채용">수시채용</option> -->
<!-- 							</select> -->

							${usersInfo.grp_recruitment}
						</td>
						<td class="td-7 center underline td-color-01 noto bold">희망직무</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_hopeJob" id="grp_hopeJob"
								class="width-100 noto" value="${usersInfo.grp_hopeJob}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">키/몸무게</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="grp_userHeight" id="" class="width-50 noto" placeholder="${usersInfo.grp_userHeight} cm" /> 
							<!-- <input type="text" name="grp_userHeight" id="" class="width-50 noto" value="${usersInfo.grp_userHeight} cm" />  -->
							<input type="text" name="grp_userWeight" id="grp_userWeight" class="width-50 noto" placeholder="${usersInfo.grp_userWeight} kg" /></td>
							<!-- <input type="text" name="grp_userWeight" id="grp_userWeight" class="width-50 noto" value="${usersInfo.grp_userWeight} kg" /></td> -->
						<td class="td-7 center underline td-color-01 noto bold">병역구분</td>
						<td class="td-13 padding-lr5 bold noto">
<!-- 							<select name="grp_militaryService" id="grp_militaryService" class="width-100 height-30"> -->
<!--                                 <option value="병역필">병역필</option> -->
<!--                                 <option value="병역미필">병역미필</option> -->
<!--                                 <option value="공익">공익</option> -->
<!--                             </select> -->
							${usersInfo.grp_militaryService}
						</td>
						<td class="td-7 center underline td-color-01 noto bold">종교</td>
						<td class="td-13 padding-lr5">
							<!-- <input type="text" name="" id="religion" class="width-50 noto" value="${usersInfo.grp_religion}" /> -->
<!-- 							<select name="grp_religion" id="grp_religion" class="width-100 height-30"> -->
<!-- 								<option value="무교">무교</option> -->
<!-- 								<option value="불교">불교</option> -->
<!-- 								<option value="기독교">기독교</option> -->
<!-- 							</select> -->
							${usersInfo.grp_religion}
						</td>
					</tr>
					<!---->
					<tr style="width: 100%; height: 1px; background-color: #eee;">
						<td colspan="10"></td>
					</tr>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">취미</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_userHobby" id="grp_userHobby"
								class="width-100 noto" value="${usersInfo.grp_userHobby}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">특기</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_userSpecialty" id="grp_userSpecialty"
								class="width-100 noto" value="${usersInfo.grp_userSpecialty}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">장애인여부</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="grp_disabledCk" id="" class="width-100 noto" value="${usersInfo.grp_disabledCk}" /> 
<!-- 							<select name="grp_disabledCk" id="grp_disabledCk" class="width-100 height-30"> -->
<!-- 								<option value="비장애">비장애</option> -->
<!-- 								<option value="장애">장애</option> -->
<!-- 							</select> -->
<%-- 								${usersInfo.grp_disabledCk} --%>
							</td>
						<td class="td-7 center underline td-color-01 noto bold">보훈대상자여부</td>
						<td class="td-13 padding-lr5">
							${usersInfo.grp_veteransCk} 
<!-- 							<select name="grp_veteransCk" id="veteransCk" class="width-100 height-30"> -->
<!-- 								<option value="비대상">비대상</option> -->
<!-- 								<option value="대상">대상</option> -->
<!-- 							</select></td> -->
						<td class="td-7 center underline td-color-01 noto bold">결혼여부</td>
						<td class="td-13 padding-lr5">
							<!-- <input type="text" name="" id=" " class="width-50 noto" value="${usersInfo.grp_marriageCk}" />  -->
							<select name="grp_marriageCk" id="grp_marriageCk" class="width-100 height-30">
								<option value="미혼">미혼</option>
								<option value="기혼">기혼</option>
							</select>
						</td>
					</tr>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">최종학력</td>
						<td class="td-13 padding-lr5">
							<!-- <input type="text" name="" id=" " class="width-50 noto" value="${usersInfo.grp_finalEducation}" />  -->
<!-- 							<select name="grp_finalEducation" id="grp_finalEducation" class="width-100 height-30"> -->
<!-- 								<option value="졸업">졸업</option> -->
<!-- 								<option value="퇴학">퇴학</option> -->
<!-- 								<option value="휴학">휴학</option> -->
<!-- 								<option value="중퇴">중퇴</option> -->
<!-- 							</select> -->
								${usersInfo.grp_finalEducation}
						</td>
						<td class="td-7 center underline td-color-01 noto bold">졸업년도</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_graduationYear"
								id="grp_graduationYear" class="width-100 noto"
								value="${usersInfo.grp_graduationYear}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">졸업학과</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_graduate" id="grp_graduate"
								class="width-100 noto" value="${usersInfo.grp_graduate}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">대학교</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_university" id="grp_university"
								class="width-100 noto" value="${usersInfo.grp_university}" /></td>
						<td class="td-7 center underline td-color-01 noto bold">학점(선택사항)</td>
						<td class="td-13 padding-lr5"><input type="text" name="grp_grades" id="grp_grades"
								class="width-100 noto" /></td>

					</tr>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">가족관계</td>
						<td class="td-13 padding-lr5 padding-tb2" colspan="9">
							<!-- <textarea name="grp_graduation" id="grp_graduation" class="width-100 height-100 noto padding-a5"
								value="${usersInfo.grp_graduation}"></textarea></td> -->
							<textarea name="grp_graduation" id="grp_graduation" class="width-100 height-100 noto padding-a5"
							placeholder="가족 관계를 입력하세요. ex) 가족관계 / 성함 / 직업"></textarea></td>
					</tr>
					<tr style="width: 100%; height: 1px; background-color: #eee;">
						<td colspan="10"></td>
					</tr>
					<!---->
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">내용</td>
						<td class="td-13 padding-lr5 padding-tb2" colspan="9">
							
							<!-- <textarea name="grp_aboutMe" id="grp_aboutMe" class="width-100 height-150 noto padding-a5"
								value="${usersInfo.grp_aboutMe}"></textarea> -->
						
							<textarea name="grp_aboutMe" id="grp_aboutMe" class="width-100 height-150 noto padding-a5"
							placeholder="하고 싶은 말을 적으세요."></textarea>
						
						</td>
					</tr>
					<tr style="width: 100%; height: 1px; background-color: #eee;">
						<td colspan="10"></td>
					</tr>
				</table>
				<div class="btn-grp center margin-t10">
					<button type="submit" class="btn-active margin-l1" id="">내용저장</button>
					<button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
				</div>
			</div>
		</form>
		<!-- 가족사항 -->

		<!-- 학력사항 -->


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

		<!-- 어학사항 // 기입하기 -->
		<!-- <div id="languageStudy" class="info"> 
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
                    </div>  -->
		<!-- 병력사항 // 확인해서 기제 하기-->
		<div id="militaryService" class="info">
			<form method="post" action="">
				<table>
					<tr class="tr-35 font-size6">
						<td class="td-7 center underline td-color-01 noto bold">군별</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="mp_militaryGroup" id="mp_militaryGroup" class="width-100 noto" />
						</td>
						<td class="td-7 center underline td-color-01 noto bold">계급</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="mp_militaryRank" id="mp_militaryRank" class="width-100 noto" />
						</td>
						<td class="td-7 center underline td-color-01 noto bold">입영일자</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="mp_enlistmentDate" id="mp_enlistmentDate" class="width-100 noto" />
						</td>
						<td class="td-7 center underline td-color-01 noto bold">전역일자</td>
						<td class="td-13 padding-lr5">
							<input type="text" name="mp_dischargeDate" id="mp_dischargeDate" class="width-100 noto" />
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
	</div>

	<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->
</body>