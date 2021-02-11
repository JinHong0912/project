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

<script src="http://code.jquery.com/jquery.min.js"></script>


<style>
 tr:first-child {
        background-color: #6f809a; 
    }

    td {
        border: 1px solid #d6dce7;
    }
</style>
<body>
	<div class="tbl-wrap" style="margin: auto;">
      	<div class="btn-grp">
           <form method="post" id="" class="" action="">
               <span class="float-l">
                   <button type="button" class="btn-active margin-l1" id="" onClick="location.href='#'">전체목록</button>
                   <button type="button" class="btn-off margin-l-2" id="" onClick="location.href='/devBoard/devBoardInsert'">게시판등록</button>
               </span>
               <span class="float-r">
                   <select name="" id="searchSelectBox" class="select-150">
                       <option value="01">게시물제목</option>
                       <option value="02">게시물내용</option>
                       <option value="03">작성자</option>
                   </select>
                   <input type="text" class="input-150 margin-l-2" id="searchText" name=""/>
                   <button type="button" class="btn-active margin-l1" id="searchBtn">내용검색</button>
               </span>
               <div class="clearfix"></div>
           </form>
       	</div>
        
    	<div>
     	 <table class="font-size4" style="margin-top:10px" id="tableWrap">
              <tr class="tr-40 th-color-01 center white underline">
				<td class="td-5">번호</td>
				<td class="td-10">제목</td>
				<td class="td-10">작성자</td>
				<td class="td-10">작성일</td>
				<td class="td-10">수정일</td>
				<td class="td-5">조회수</td>
				<td class="td-10">게시글관리</td>
			</tr>
       </table>
    	</div>
    	
    	
        <div class="page-grp center">
            <span class="page">
                <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-double-left" style="padding: 10px;"></i></a> 
            </span>
            <span class="page">
                <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-left" style="padding: 10px;"></i></a>
            </span>
            <span class="page page-active">1</span>
            <span class="page">2</span>
            <span class="page">3</span>
            <span class="page">4</span>
            <span class="page">5</span>
            <span class="page">
                <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-right" style="padding: 10px;"></i></a>
            </span>
            <span class="page">
                <a href="#" class="gray"><i class="icon-height1 fas fa-chevron-double-right" style="padding: 10px;"></i></a>
            </span>
        </div>
    </div>

	
</body>
<script type="text/javascript">

	$(document).ready(function () {
		searchList();

		// 검색버튼 클릭 
		$('#searchBtn').click(function(){
			//1. 파라미터 세팅
			var searchType = $('#searchSelectBox option:selected').val(); 
			var searchText = $('#searchText').val();

			//2. 리스트 조회 아작스
			searchList(searchType, searchText);
			  
		});
	});

	// 리스트조회 
	function searchList(type, text) {
		
		var param = {
				searchType : type,
				searchText : text
			};
		$.ajax({ 
			url :'./getBoardList'
			, type : 'get'
			, dataType : 'json'
			, data : param
			, success: function(response){ 
				var str = '';
				var size = response.length;
				//alert(size);
				for(var i=0; i<size; i++) {
					str +='<tr name="listWrap" class="tr-40 tr-color-odd center listWrap">';
					str +='    	<td>'+response[i].rn+'</td>';
					str +='		<td><a href="javascript:goDetail('+response[i].board_no+')">'+response[i].title+'</a></td>';
					str +='		<td>'+response[i].user_id+'</td>';
					str +='		<td>'+response[i].reg_date+'</td>';
					str +='		<td>'+response[i].mod_date+'</td>';
					str +='		<td>'+response[i].view_cnt+'</td>';
					str +='		<td>'+response[i].view_cnt+'</td>';
					str +='</tr> ';
				}
 				$('tr[name ="listWrap"]').remove();
              	$('#tableWrap').append(str);  
			} 
		});
	}   

	/* 상세페이지로 이동 */
	function goDetail(num) {

		location.href = "./getBoardDetail?boardNo="+num;
		//alert(boardNo);
	}
</script>
<!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->