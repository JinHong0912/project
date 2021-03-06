<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/group/groupAdmin.css" />
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<!-- 글쓰기에 필요한 부분 -->
<script src="/ckeditor/ckeditor.js"></script>
<!-- 글쓰기에 필요한 부분 -->
<script src="http://code.jquery.com/jquery.min.js"></script>

<style>
    tr:first-child {
        /* background-color: #6f809a; */
    }

    td {
        border: 1px solid #d6dce7;
    }
</style>
<!-- 중복 부분-------------------------------------------------------------------------------------- -->

<body>

    <div class="tbl-wrap" style="margin: auto;">
            <div class="btn-grp">
                <form method="post" id="" class="" action="">
                    <span class="float-l">
                        <!-- <button type="button" class="btn-active margin-l1" id=""
                            onClick="location.href='insa.html'">전체목록</button> -->
                         <h1 class="noto margin-t20 margin-b5">
                         	<i class="fas fa-bullhorn"></i> 게시판 입니다.
                         </h1>
                    </span>
                    <span class="float-r">
                        <!-- <button type="button" class="btn-on margin-l-2" id="" onClick="location.href=''">개인신상</button> -->
                    </span>
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="">
                <!-- <h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i>게시판입니.</h3> -->
                <button type="button" class="btn-active margin-l1 margin-b5" id=""
                            onClick="location.href='./devBoardList'">전체목록</button>
            </div>
            <form method="post" action="">
                <table class="font-size4">
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">게시물 제목</td>
                        <td class="td-13 padding-lr5" colspan="9" >
  							${devBoardVo.title}
                        </td>
                        
                       
                    </tr>
                    <!-- -->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">작성자</td>
                        <td class="td-13 padding-lr5">
                            ${devBoardVo.username }
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">등록일</td>
                        <td class="td-13 padding-lr5" colspan="2">
                        	${devBoardVo.regDate}
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">수정일</td>
                        <td class="td-13 padding-lr5" colspan="2">
                        	${devBoardVo.modDate}
                        </td>
                       	<td class="td-7 center underline td-color-01 noto bold">조회수</td>
                        <td class="td-13 padding-lr5">
							${devBoardVo.viewCnt}
                        </td>
                    </tr>
                    <!---->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                   
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <!---->
                    <tr class="tr-35">
                        <td class="td-7 center underline td-color-01 noto bold">게시물 내용</td>
                            
                            <td class="width-100 padding-lr-10" colspan="9">
								
								<textarea name="grp_aboutMe" id="grp_aboutMe" class="width-100 height-150 noto padding-a5" 
								placeholder="하고 싶은 말을 적으세요." style="resize:none" readonly>${devBoardVo.boardContent}</textarea>
                            </td>
                    </tr>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                </table>
                <div class="btn-grp left margin-t10">
					<button type="button" class="btn-active margin-l1 margin-b5" id="" onClick="javascript:goDetail();">수정</button>
                    <button type="button" class="btn-active margin-l1" id="deleteBtn">삭제</button>
                    <button type="button" class="btn-active margin-l1" id="">댓글</button>
                </div>
				<!--댓글 달기 부분 -->
				<div class="">
					<table>		
				       <tr class="tr-35">
	                       <td class="td-7 center td-color-01 noto bold" style="color: white" id="commentBtn">댓글</td>
	                       <td class="width-100 padding-lr-10" colspan="8">
								<textarea name="grp_aboutMe" id="grp_aboutMe" class="width-100 height-150 noto padding-a5" 
									placeholder="원하는 댓글을 작성하세요." style="resize:none" ></textarea>
	                       </td>
	                       <td style="background-color: white; padding: 10px;">
	                       		<button type="button" class="btn-active margin-l1" id="insertCommentBtn" style="">댓글달기</button>
	                       </td>
	                   </tr>
					</table>     
				</div>
				

            </form>
        </div>
   
</body>
<script type="text/javascript">

	$(document).ready(function () {
		$('#deleteBtn').click(function(){

 			var param = {
					
 					boardNo : '${devBoardVo.boardNo}'
 				};
			
			$.ajax({ 
				url :'./deleteBoardDetail'
				, type : 'post'
				, dataType : 'json'
				, data : param
				, success: function(response){ 
					alert(response.msg);
					
					if(response.msg == 'SECCESS') {
						//move
						location.href = "./devBoardList";
					}

					

					//var boardNo = 0;
					//goDetail("${map.board_no}");
				}
				,error:function(request, status, error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});  
		});
	});

	/* 수정페이지로 이동 */
	function goDetail() {

		var num = "${devBoardVo.boardNo}";
		location.href = "./getBoardUpdate?boardNo="+num;
		//alert(boardNo);
	}

	
</script>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->