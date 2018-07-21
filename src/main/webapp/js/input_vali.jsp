<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>

//입력폼전송
function submitFrm(){
	
	
	// 날짜조합하여 넣기
	var graduateDay = $("#s_year").val() + "-" + $("#s_month").val();
	$("input[name='fl_graduate_day']").attr("value",graduateDay);
	
	var carreerDay = $("#carreer_year").val() + "-" + $("#carreer_month").val();
	$("input[name='carreer']").attr("value",carreerDay);
	
	var checkedDay = $("#carreer_check_year").val() + "-" + $("#carreer_check_month").val() + "-" + $("#carreer_check_day").val();
	$("input[name='checked_day']").attr("value",checkedDay);
	
	var consultDay = $("#consult_year").val() + "-" + $("#consult_month").val() + "-" + $("#consult_day").val()
					 + "-" + $("#consult_hour").val() + "-" + $("#consult_minute").val();
	$("input[name='fl_consult_day']").attr("value",consultDay);
	
	var sendDay = $("#send_day_year").val() + "-" + $("#send_day_month").val() + "-" + $("#send_day_day").val()  ;
	$("input[name='fl_send_day']").attr("value",sendDay);
	
	// 핸드폰번호 
	

	// 협상 후 결정 체크되어 있으면
	if($("#s_develop_price").val() == "" || $("#e_develop_price").val() == ""){
		if($("#d_nego").prop("checked")){
			$("#s_develop_price").children().eq(1).prop("selected",true);
			$("#e_develop_price").children().eq(14).prop("selected",true);
		}
	}
	
	if($("#s_op_price").val() == "" || $("#e_op_price").val() == ""){
		if($("#o_nego").prop("checked")){
			$("#s_op_price").children().eq(1).prop("selected",true);
			$("#e_op_price").children().eq(14).prop("selected",true);
		}
	}
	
	
/* 유효성 체크 */

 // radio :gender
	var gender_radio = document.fl_input_frm.fl_gender.length;
	var gender_check = 0;
	
	for(var i=0; i<gender_radio;i++){
		if(fl_input_frm.fl_gender[i].checked == true){
			gender_check++
			break;
		}
	}
	
 // radio :job_code
	var job_radio = document.fl_input_frm.job_code.length;
	var job_check = 0;
	
	for(var i=0; i<job_radio;i++){
		if(fl_input_frm.job_code[i].checked == true){
			job_check++
			break;
		}
	}

 // checkbox :own_skill_code
	var own_skill_code_radio = document.fl_input_frm.own_skill_code.length;
	var own_skill_code_check = 0;
	
	for(var i=0; i<own_skill_code_radio;i++){
		if(fl_input_frm.own_skill_code[i].checked == true){
			own_skill_code_check++
			break;
		}
	}
	
	// checkbox :role_code
	var role_code_radio = document.fl_input_frm.role_code.length;
	var role_code_check = 0;
	
	for(var i=0; i<role_code_radio;i++){
		if(fl_input_frm.role_code[i].checked == true){
			role_code_check++
			break;
		}
	}
	
	// checkbox :able_area_code
	var able_area_code_radio = document.fl_input_frm.able_area_code.length;
	var able_area_code_check = 0;
	
	for(var i=0; i<able_area_code_radio;i++){
		if(fl_input_frm.able_area_code[i].checked == true){
			able_area_code_check++
			break;
		}
	}
	
	// checkbox :favorite_code
	var favorite_code_radio = document.fl_input_frm.favorite_code.length;
	var favorite_code_check = 0;
	
	for(var i=0; i<favorite_code_radio;i++){
		if(fl_input_frm.favorite_code[i].checked == true){
			favorite_code_check++
			break;
		}
	}
	
	//phone
	var phone_check = /^[0-9]*$/;
	
	
	if(document.fl_input_frm.fl_name.value==""){
		alert("이름을 입력하세요.");
		document.fl_input_frm.fl_name.focus();
	}else if(gender_check == 0){
		alert("성별을 선택하세요.");
		
	}else if(document.fl_input_frm.fl_email.value == ""){
		alert("이메일을 입력하세요.");
		document.fl_input_frm.fl_email.focus();
	}else if(document.fl_input_frm.fl_phone.value == "" || !phone_check.test(document.fl_input_frm.fl_phone.value)){
		alert("휴대전화 번호는 숫자만 입력해주세요.");
		document.fl_input_frm.fl_phone.focus();
	}else if(document.fl_input_frm.fl_birth.value == ""){
		alert("출생년도를 선택해주세요.");
		
	}else if(document.fl_input_frm.school_code.value == ""){
		alert("최종학력을 선택해주세요.");
		
	}else if(document.fl_input_frm.s_year.value == ""){
		alert("졸업년도를 선택해주세요.");
		
	}else if(document.fl_input_frm.s_month.value == ""){
		alert("졸업월을 선택해주세요.");
		
	}else if(document.fl_input_frm.carreer_year.value == ""){
		alert("추정 개발경력을 선택해주세요.");
		
	}else if(document.fl_input_frm.consult_year.value == ""){
		if(confirm("상담시간을 선택해주세요. 지금시간으로 선택하시겠습니까?")){
			selectToday();
		}
	}else if(job_check == 0){
		alert("현재 직업을 선택해주세요.");
		
	}else if(own_skill_code_check == 0){
		alert("소유시킬은 하나 이상 선택해야합니다.");
		
	}else if(role_code_check == 0){
		alert("파견역할은 하나 이상 선택해야합니다.");
		
	}else if(document.fl_input_frm.send_day_year.value ==""){
		alert("파견가능일을 선택해주세요.");
		
	}else if(document.fl_input_frm.d_min_price.value == ""){
		if(!$("#d_nego").prop("checked")){
			alert("개발단가를 선택해주세요.");
		}
	}else if(document.fl_input_frm.o_min_price.value == ""){
		if(!$("#o_nego").prop("checked")){
			alert("운영단가를 선택해주세요.");
		}
	}else if(able_area_code_check == 0){
		alert("근무가능지역은 하나 이상 선택해야합니다.");
		
	}else if(favorite_code_check == 0){
		alert("선호분야는 하나 이상 선택해야합니다.");
		
	}else if(document.fl_input_frm.area_code.value == ""){
		alert("거주지를 선택해주세요.");
	}else{
		//데이터전송
		document.fl_input_frm.submit();
	}
		
	
	
	
}


</script>