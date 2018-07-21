<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
// 행 클릭 시 해당 행의 사원정보보기
$(".contents_tr").on("mouseover",function(){
	$(this).css({"background":"#ff9"});
});
$(".contents_tr").on("mouseleave",function(){
	$(this).css({"background":"#fff"});
});
$(".contents_tr").on("click",function(){
	var tr_url = $(this).eq(0).children().eq(1).children().attr("href");
	location.href=tr_url;
});


/* paging */
function paging(page){
	document.getElementById("paging_page").value=page;
	document.fl_search_frm.submit();
}


//정렬
$("#orderby").on("change",function(){
	if($("#orderby").val() == ""){
		
	}else{
		var order = $("#orderby").val();
		$("#page_orderby").attr("value",order);
		document.fl_search_frm.submit();
	}
});


// 페이지당 게시물수 보기 변경되면
$("#rowperpage").on("change",function(){
	var rowper = $('#rowperpage').val();
	$("#page_size").attr("value",rowper);
	document.fl_search_frm.submit();
});


/* 자동완성 & 유효성검사 */
$("#e_carreer_check_year").on("change",function(){
	if($("#e_carreer_check_year").val () == now.getFullYear()){
		$("#e_carreer_check_month").children().eq(selected_month).prop("selected",true);
		$("#e_carreer_check_day").children().eq(selected_day).prop("selected",true);
	}else{
		$("#e_carreer_check_month").children().eq(12).prop("selected",true);
		$("#e_carreer_check_day").children().eq(31).prop("selected",true);
	}
});

  // 상담시간 
$("#e_consult_year").on("change",function(){
	
		if($("#e_consult_year").val() == ""){
			alert("공백은 선택할 수 없습니다.");
			$("#e_consult_year").children().eq(1).prop("selected",true);
		}else{
			$("#e_consult_month").children().eq(12).prop("selected",true);
			$("#e_consult_day").children().eq(31).prop("selected",true);;
			
		}
});
   
$("#e_consult_month").on("change",function(){
	if($("#e_consult_month").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#e_consult_month").children().eq(1).prop("selected",true);
	}else{
		if($("#e_consult_year").val() == ""){
			alert("순서대로 선택하세요.");
			$("#e_consult_month").children().eq(0).prop("selected",true);	
		}else{
			if($("#e_consult_year").val() == now_year && $("#consult_month").val() > selected_month){
				alert("미래는 선택할 수 없습니다.");
				$("#e_consult_month").children().eq(selected_month).prop("selected",true);
			}
		}
	}
});
   
$("#e_consult_day").on("change",function(){
	if($("#e_consult_day").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#e_consult_day").children().eq(1).prop("selected",true);
	}else{
		if($("#e_consult_year").val() == "" || $("#e_consult_month").val() == ""){
			alert("순서대로 선택하세요.");
			$("#e_consult_day").children().eq(0).prop("selected",true);	
		}else{
			if($("#e_consult_year").val() == now_year && $("#e_consult_month").val() == selected_month && $("#e_consult_day").val() > selected_day){
				alert("미래는 선택할 수 없습니다.");
				$("#e_consult_day").children().eq(selected_day).prop("selected",true);
			}
		}
	}
});


// 검색
function searchSubmit(){
	//체크박스 체크 수 확인
	var kind_ckh = 0;
	var own_chk = 0;
	var certi_chk = 0;
	var role_chk = 0;
	var school_chk = 0;
	var favorite_chk = 0;
	var gender_chk = 0;
	var job_chk = 0;
	
	for(var n=0;n<document.fl_search_frm.fl_kind.length;n++){
		if($(document.fl_search_frm.fl_kind[n]).prop("checked") == true){
			kind_ckh++;
			break;
		}
	}
	
	for(var n=0;n<document.fl_search_frm.own_skill_code.length;n++){
		if($(document.fl_search_frm.own_skill_code[n]).prop("checked") == true){
			own_chk++;
			break;
		}
	}

	for(var n=0;n<document.fl_search_frm.certi_code.length;n++){
		if($(document.fl_search_frm.certi_code[n]).prop("checked") == true){
			certi_chk++;
			break;
		}
	}
	
	for(var n=0;n<document.fl_search_frm.role_code.length;n++){
		if($(document.fl_search_frm.role_code[n]).prop("checked") == true){
			role_chk++;
			break;
		}
	}
	
	for(var n=0;n<document.fl_search_frm.school_code.length;n++){
		if($(document.fl_search_frm.school_code[n]).prop("checked") == true){
			school_chk++;
			break;
		}
	}
	
	for(var n=0;n<document.fl_search_frm.favorite_code.length;n++){
		if($(document.fl_search_frm.favorite_code[n]).prop("checked") == true){
			favorite_chk++;
			break;
		}
	}
	
	for(var n=0;n<document.fl_search_frm.fl_gender.length;n++){
		if($(document.fl_search_frm.fl_gender[n]).prop("checked") == true){
			gender_chk++;
			break;
		}
	}
	
	for(var n=0;n<document.fl_search_frm.job_code.length;n++){
		if($(document.fl_search_frm.job_code[n]).prop("checked") == true){
			job_chk++;
			break;
		}
	}
	
	//조건 있을 경우 검색
	if(kind_ckh == 0 && ($("#send_day_year").val() == "" && $("#e_send_day_year").val() == ""  ) && ($("#s_carreer").val() == "" && $("#e_carreer").val() == "") && own_chk == 0 && certi_chk == 0 && role_chk == 0 && school_chk == 0 && favorite_chk == 0 &&
			($("#s_age").val() == ""  && $("#e_age").val() == "") && gender_chk == 0 && ($("#s_year").val() == "" && $("#e_year").val() == "") && ($("#carreer_check_year").val() == "" && $("#e_carreer_check_year").val() == "") && ($("#consult_year").val() == "" && $("#e_consult_year").val() == "") &&
			job_chk == 0 && document.fl_search_frm.keyword1.value == "" && $(document.fl_search_frm.fl_send_day_check).prop("checked")==false){
		alert("조건을 하나라도 선택해주세요.");
		
	}else{
		// 조합
		
		  // 파견일
 		var send_day = $("#send_day_year").val() + "-" + $("#send_day_month").val() + "-" + $("#send_day_day").val();
 		var e_send_day = $("#e_send_day_year").val() + "-" + $("#e_send_day_month").val() + "-" + $("#e_send_day_day").val();
			
 		if(send_day=="--"){send_day="";}
 		if(e_send_day=="--"){e_send_day="";}
 		
		$(document.fl_search_frm.fl_send_day).attr("value",send_day);
		$(document.fl_search_frm.fl_e_send_day).attr("value",e_send_day);
		
		  // 나이
	 	var s_birth = ( now.getFullYear() - $("#s_age").val() ) +1 ;
	 	var e_birth = ( now.getFullYear() - $("#e_age").val() ) +1 ;
	 	
	 	if(s_birth>now.getFullYear()){s_birth="";}
	 	if(e_birth>now.getFullYear()){e_birth="";}
	
		$(document.fl_search_frm.fl_birth).attr("value",s_birth);
		$(document.fl_search_frm.fl_e_birth).attr("value",e_birth);
		
		
		  // 상담일
		var s_consult =$("#consult_year").val() + "-" + $("#consult_month").val() + "-" + $("#consult_day").val();
		var e_consult =$("#e_consult_year").val() + "-" + $("#e_consult_month").val() + "-" + $("#e_consult_day").val();
		
		if(s_consult=="--"){s_consult="";}
		if(e_consult=="--"){e_consult="";}
		
		$(document.fl_search_frm.fl_consult_day).attr("value",s_consult);
		$(document.fl_search_frm.fl_e_consult_day).attr("value",e_consult); 
		 
		
		  // 경력확인일 : 이력서확인일
		var crr_day = $("#carreer_check_year").val() + "-" + $("#carreer_check_month").val() + "-" + $("#carreer_check_day").val();
		var e_crr_day = $("#e_carreer_check_year").val() + "-" + $("#e_carreer_check_month").val() + "-" + $("#e_carreer_check_day").val();
	
		if(crr_day == "--"){crr_day = "";}
		if(e_crr_day == "--"){e_crr_day = "";}
		
		$(document.fl_search_frm.checked_day).attr("value",crr_day);
		$(document.fl_search_frm.e_checked_day).attr("value",e_crr_day);
		
		
		//데이터전송하기
		document.fl_search_frm.submit();
		
	}

}
</script>