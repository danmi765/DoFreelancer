<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>

// 비움
$(".empty_btn").on("click",function(){
	para = $(this).parent().attr("class");
	emptyBox(para);
});

function emptyBox(name){
	$("."+name).find("select").children().prop("selected",false);
	$("."+name).find("input").prop("checked",false);
	$("."+name+" > input[type='text']").val("");
}

// 개발경력 자동변경
  	// 기준날짜 오늘로 자동변경
function changeTime(){
	$("#carreer_check_year").children().eq(selected_year).prop("selected",true);
	$("#carreer_check_month").children().eq(selected_month).prop("selected",true);
	$("#carreer_check_day").children().eq(selected_day).prop("selected",true);
}


//경력일수 자동입력
function carreerCount (){
	   
   // 오늘날짜 - 확인날짜
   var today = new Date(now.getFullYear(),(now.getMonth()+1), now.getDate());
   var view_date = new Date($("#carreer_check_year").val(),$("#carreer_check_month").val(),$("#carreer_check_day").val());
   
   var crr_count = Number( (((today - view_date)/(24 * 3600 * 1000))/365) ).toFixed(1);
  
   // 입력된 경력
   var view_carreer_year = Number($("#carreer_year").val());
   var view_carreer_month = Number($("#carreer_month").val());
  
   var carreer = Number(view_carreer_year + "." + view_carreer_month).toFixed(1);
   
   // (오늘날짜-확인날짜)+입력경력
   var con = Number(crr_count) + Number(carreer);
   
   // 결과 
   var res = (""+con).split(".");
   
   
   // 입력
   $(".crr_y").html(res[0]);
   
   if(res[1] != null){
	   $(".crr_m").html(res[1]);
   }
	   
}

$("#carreer_year").on("change",function(){
	$("#carreer_month").children().eq(1).prop("selected",true);
	changeTime();
	carreerCount();
});

$("#carreer_month").on("change",function(){
	changeTime();
	carreerCount();
});

$("#carreer_check_year").on("change",function(){
	$("#carreer_check_month").children().eq(1).prop("selected",true);
	$("#carreer_check_day").children().eq(1).prop("selected",true);
	carreerCount();
});

$("#carreer_check_month").on("change",function(){
	if( $("#carreer_check_year").val() == now.getFullYear()){
		if( $("#carreer_check_month").val() > selected_month){
			alert("미래는 선택할 수 없습니다.");
			$("#carreer_check_month").children().eq(selected_month).prop("selected",true);
		}	
	}
	carreerCount();
});

$("#carreer_check_day").on("change",function(){
	if( $("#carreer_check_year").val() == now.getFullYear()){
		if( ($("#carreer_check_month").val() < 10 && $("#carreer_check_month").val() == ("0"+selected_month) ) ||
			($("#carreer_check_month").val() >= 10 && $("#carreer_check_month").val() == selected_month ) ){
			if($("#carreer_check_day").val() >= now.getDate() ){
				alert("미래는 선택할 수 없습니다.");
				$("#carreer_check_day").children().eq(selected_day).prop("selected",true);
			}
		}	
	}
	carreerCount();
});

   


// 상담시각 시간선택,해제
   // selectbox 선택해제
function toodayUnchoose(){
	$(".consult_td > select").children().prop("selected",false);
}

   // 지금클릭 시 오늘날짜 입력
function selectToday(){
	
	 $("#consult_year").children().eq(selected_year).prop("selected",true);
	 $("#consult_month").children().eq(selected_month).prop("selected",true);
	 $("#consult_day").children().eq(selected_day).prop("selected",true);
	 $("#consult_hour").children().eq(selected_hour).prop("selected",true);
	 $("#consult_minute").children().eq(selected_minute).prop("selected",true);
	
}
   
   
   // 상담시간, 파견일 유효성검사
$("#consult_year").on("change",function(){
		
	if($("#consult_year").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#consult_year").children().eq(1).prop("selected",true);
	}else{
		$("#consult_month").children().eq(1).prop("selected",true);
		$("#consult_day").children().eq(1).prop("selected",true);;
		$("#consult_hour").children().eq(1).prop("selected",true);
		$("#consult_minute").children().eq(1).prop("selected",true);
		
	}
});
   
$("#consult_month").on("change",function(){
	if($("#consult_month").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#consult_month").children().eq(1).prop("selected",true);
	}else{
		if($("#consult_year").val() == ""){
			alert("순서대로 선택하세요.");
			$("#consult_month").children().eq(0).prop("selected",true);	
		}else{
			if($("#consult_year").val() == now_year && $("#consult_month").val() > selected_month){
				alert("미래는 선택할 수 없습니다.");
				$("#consult_month").children().eq(selected_month).prop("selected",true);
			}
		}
	}
});
   
$("#consult_day").on("change",function(){
	if($("#consult_day").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#consult_day").children().eq(1).prop("selected",true);
	}else{
		if($("#consult_year").val() == "" || $("#consult_month").val() == ""){
			alert("순서대로 선택하세요.");
			$("#consult_day").children().eq(0).prop("selected",true);	
		}else{
			if($("#consult_year").val() == now_year && $("#consult_month").val() == selected_month && $("#consult_day").val() > selected_day){
				alert("미래는 선택할 수 없습니다.");
				$("#consult_day").children().eq(selected_day).prop("selected",true);
			}
		}
	}
});

$("#send_day_year").on("change",function(){
	if($("#send_day_year").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#send_day_year").children().eq(1).prop("selected",true);
	}else{
		if($("#send_day_year").val() == now.getFullYear()){
			$("#send_day_month").children().eq(selected_month).prop("selected",true);
			$("#send_day_day").children().eq(selected_day).prop("selected",true);
		}else{
			$("#send_day_month").children().eq(1).prop("selected",true);
			$("#send_day_day").children().eq(1).prop("selected",true);
		}
	}
});

$("#e_send_day_year").on("change",function(){
	if($("#e_send_day_year").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#e_send_day_year").children().eq(1).prop("selected",true);
	}else{
		if($("#e_send_day_year").val() == now.getFullYear()){
			$("#e_send_day_month").children().eq(12).prop("selected",true);
			$("#e_send_day_day").children().eq(31).prop("selected",true);
		}else{
			$("#e_send_day_month").children().eq(12).prop("selected",true);
			$("#e_send_day_day").children().eq(31).prop("selected",true);
		}
	}
});

$("#send_day_month").on("change",function(){
	if($("#send_day_month").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#send_day_month").children().eq(1).prop("selected",true);
	}else{
		if($("#send_day_year").val() == now.getFullYear()){
			if($("#send_day_month").val() < selected_month){
				alert("과거는 선택할 수 없습니다.");
				$("#send_day_month").children().eq(selected_month).prop("selected",true);
			}		
		}else{
			if($("#send_day_year").val() == ""){
				alert("순서대로 선택하세요.");
				$("#send_day_month").children().eq(0).prop("selected",true);
			}
		}
	}
});

$("#e_send_day_month").on("change",function(){
	if($("#e_send_day_month").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#e_send_day_month").children().eq(1).prop("selected",true);
	}else{
		if($("#e_send_day_year").val() == now.getFullYear()){
			if($("#e_send_day_month").val() < selected_month){
				alert("과거는 선택할 수 없습니다.");
				$("#e_send_day_month").children().eq(selected_month).prop("selected",true);
			}		
		}else{
			if($("#e_send_day_year").val() == ""){
				alert("순서대로 선택하세요.");
				$("#e_send_day_month").children().eq(0).prop("selected",true);
			}
		}
	}
});

$("#send_day_day").on("change",function(){
	if($("#send_day_day").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#send_day_day").children().eq(1).prop("selected",true);
	}else{
		if($("#send_day_year").val() == now.getFullYear()){
			if($("#send_day_month").val() == selected_month){
				if($("#send_day_day").val() < selected_day){
					alert("과거는 선택할 수 없습니다.");
					$("#send_day_day").children().eq(selected_day).prop("selected",true);
				}
			}
		}else{
			if($("#send_day_year").val() == "" || $("#send_day_month").val() == ""){
				alert("순서대로 선택하세요.");
				$("#send_day_day").children().eq(0).prop("selected",true);
			}
		}
	}
});

$("#e_send_day_day").on("change",function(){
	if($("#e_send_day_day").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#e_send_day_day").children().eq(1).prop("selected",true);
	}else{
		if($("#e_send_day_year").val() == now.getFullYear()){
			if($("#e_send_day_month").val() == selected_month){
				if($("#e_send_day_day").val() < selected_day){
					alert("과거는 선택할 수 없습니다.");
					$("#e_send_day_day").children().eq(selected_day).prop("selected",true);
				}
			}
		}else{
			if($("#e_send_day_year").val() == "" || $("#e_send_day_month").val() == ""){
				alert("순서대로 선택하세요.");
				$("#e_send_day_day").children().eq(0).prop("selected",true);
			}
		}
	}
});


// 개발단가 , 운영단가 자동완성
$("#s_develop_price").on("change",function(){
	var ind = (parseInt($("#s_develop_price").val())+100)/50;
	
	$("#e_develop_price").children().eq(ind).prop("selected",true);
});

$("#e_develop_price").on("change",function(){
	if($("#s_develop_price").val() == "" ){
		alert("순서대로 선택하세요.");
		$("#e_develop_price").children().eq(0).prop("selected",true);
	}
});

$("#s_op_price").on("change",function(){
	var ind = (parseInt($("#s_op_price").val())+100)/50;
	
	$("#e_op_price").children().eq(ind).prop("selected",true);
});

$("#e_op_price").on("change",function(){
	if($("#s_op_price").val() == "" ){
		alert("순서대로 선택하세요.");
		$("#e_op_price").children().eq(0).prop("selected",true);
	}
});

$("#s_carreer").on("change",function(){
	if($("#e_carreer").val() != "" && ($("#s_carreer").val() > $("#e_carreer").val())){
		alert("시작년차가 더 작아야 합니다.");
		$("#s_carreer").children().eq(1).prop("selected",true);
	}
});

$("#e_carreer").on("change",function(){
	if($("#e_carreer").val() != "" && ($("#s_carreer").val() > $("#e_carreer").val())){
		alert("시작년차보다 작을 수 없습니다.");
		$("#e_carreer").children().eq(0).prop("selected",true);
	}
});

$("#s_age").on("change",function(){
	
	if($("#s_age").val() ==""){
		alert("공백은 선택할 수 없습니다");
		$("#s_age").children().eq(1).prop("selected",true);
		
	}else if($("#e_age").val() != "" && ($("#s_age").val() > $("#e_age").val())){
		alert("시작나이가 더 작을 수 없습니다.");
		$("#s_age").children().eq(1).prop("selected",true);
	}
	
});

$("#e_age").on("change",function(){
	
	if( $("#e_age").val() != "" && ($("#s_age").val() > $("#e_age").val())){
		alert("시작나이보다 더 작을 수 없습니다.");
		$("#e_age").children().eq(0).prop("selected",true);
	}
	
});


$("#s_year").on("change",function(){
	if($("#s_year").val() == ""){
		alert("공백은 선택할 수 없습니다.");
		$("#s_year").children().eq(1).prop("selected",true);
	}else if($("#e_year").val() != "" &&($("#s_year").val() > $("#e_year").val() )){
		alert("시작년도가 더 작을 수 없습니다.");
		$("#e_year").children().eq(0).prop("selected",true);
	}
});

$("#e_year").on("change",function(){
	
	if($("#e_year").val() != "" && ($("#s_year").val() > $("#e_year").val())){
		alert("시작년도보다 작을 수 없습니다.");
		$("#e_year").children().eq(0).prop("selected",true);
	}
			
});







</script>