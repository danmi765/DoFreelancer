<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>


//졸업년도 option
var e_graduate_option_year= [];
var graduate_option_year= [];


//개발년차 option

var check_day_year = [] ;
var check_day_month = [] ;
var check_day_day = [] ;
var e_check_day_year = [] ;
var e_check_day_month = [] ;
var e_check_day_day = [] ;


//상담시간, 파견가능일 option
var consult_year_option = [];
var consult_month_option = [];
var consult_day_option = [];
var e_consult_year_option = [];
var e_consult_month_option = [];
var e_consult_day_option = [];

var send_day_year_option = [] ;
var send_day_month_option = [] ;
var send_day_day_option = [] ;
var e_send_day_year_option = [] ;
var e_send_day_month_option = [] ;
var e_send_day_day_option = [] ;



// search : 가상개발년차
var s_carreer_option = [];
var e_carreer_option = [];

var s_age_option = [];
var e_age_option = [];



/* 조건유지 */
  //화이트&블랙 개발자
var kkind = "${condition.fl_kind}";
var kinds_arr = ["${condition.kind1}","${condition.kind2}"];
  
   //파견가능일
var send_days = "${condition.fl_send_day}";
var e_send_days = "${condition.fl_e_send_day}";

var send_days_arr = send_days.split("-");
var e_send_days_arr = e_send_days.split("-"); 

  //종료확정여부
var send_day_chk = "${condition.fl_send_day_check}";

  //가상개발년차
var s_crr = "${condition.s_carreer}";
var e_crr = "${condition.e_carreer}";

  //소유스킬
var own_skills = "${condition.own_skill_code}";
var own_skills_arr = own_skills.split(",");

  //자격증
var certis = "${condition.certi_code}";
var certis_arr = certis.split(",");

  //파견역할
var roles = "${condition.role_code}";
var roles_arr = roles.split(",");

  //최종학력
var schools = "${condition.school_code}";
var schools_arr = schools.split(",");

  //선호분야
var favors = "${condition.favorite_code}";
var favors_arr = favors.split(",");

  //나이
var s_ages = (now.getFullYear() - Number("${condition.fl_birth}"))+1;
var e_ages = (now.getFullYear() - Number("${condition.fl_e_birth}"))+1;

  //성별
var gender = "${condition.fl_gender}";

var genser1 = "${condition.gender1}";
var genser1 = "${condition.gender2}";

  //졸업년도
var gradu1 = "${condition.s_year}";
var gradu2 = "${condition.e_year}";

  // 이력서확인일
var checked_days = "${condition.checked_day}";
var checked_days_arr = checked_days.split("-");

var e_checked_days = "${condition.e_checked_day}";
var e_checked_days_arr = e_checked_days.split("-");

  //상담시각
var con_d = "${condition.fl_consult_day}";
var con_d_arr = con_d.split("-");

var e_con_d = "${condition.fl_e_consult_day}";
var e_con_d_arr = e_con_d.split("-");

  //현재직업
var jobs = "${condition.job_code}";
var jobs_arr = jobs.split(",");

  //rowperpage
var pz = "${pagesize}";

  //orderby
var orders = "${condition.orderby}";





//조건데이터입력
for(var n=0; n<$("#orderby").children().length;n++){
	if(orders == $("#orderby").children().eq(n).val()){
		 $("#orderby").children().eq(n).prop("selected",true);
	}
}

for(var n=0; n<3;n++){
	if(pz == $("#rowperpage").children().eq(n).val()){
		 $("#rowperpage").children().eq(n).prop("selected",true);
	}
}

for(var n=0;n<jobs_arr.length;n++){
	for(var m=0;m<document.fl_search_frm.job_code.length;m++){
		if(document.fl_search_frm.job_code[m].value == jobs_arr[n]){
			$(document.fl_search_frm.job_code[m]).prop("checked",true);
		}
	}
}

if(gender != ""){
	for(var n=0;n<2;n++){
		if(gender == document.fl_search_frm.fl_gender[n].value){
			$(document.fl_search_frm.fl_gender[n]).prop("checked",true);
		}
	}
}

if(genser1 != ""){
	$("#gender_m").prop("checked",true);
	$("#gender_w").prop("checked",true);
}

for(var n=0;n<favors_arr.length;n++){
	for(var m=0;m<document.fl_search_frm.favorite_code.length;m++){
		if(document.fl_search_frm.favorite_code[m].value == favors_arr[n]){
			$(document.fl_search_frm.favorite_code[m]).prop("checked",true);
		}
	}
}

for(var n=0;n<schools_arr.length;n++){
	for(var m=0;m<document.fl_search_frm.school_code.length;m++){
		if(document.fl_search_frm.school_code[m].value == schools_arr[n]){
			$(document.fl_search_frm.school_code[m]).prop("checked",true);
		}
	}
}

for(var n=0;n<roles_arr.length;n++){
	for(var m=0;m<document.fl_search_frm.role_code.length;m++){
		if(document.fl_search_frm.role_code[m].value == roles_arr[n]){
			$(document.fl_search_frm.role_code[m]).prop("checked",true);
		}
	}
}

for(var n=0;n<certis_arr.length;n++){
	for(var m=0;m<document.fl_search_frm.certi_code.length;m++){
		if(document.fl_search_frm.certi_code[m].value == certis_arr[n]){
			$(document.fl_search_frm.certi_code[m]).prop("checked",true);
		}
	}
}

for(var n=0;n<own_skills_arr.length;n++){
	for(var m=0;m<document.fl_search_frm.own_skill_code.length;m++){
		if(document.fl_search_frm.own_skill_code[m].value == own_skills_arr[n]){
			$(document.fl_search_frm.own_skill_code[m]).prop("checked",true);
		}
	}
}

if(send_day_chk == "y"){
	$("#flsdc").prop("checked",true);
}

if(kinds_arr[0] != "" && kinds_arr[1] != ""){
	$(document.fl_search_frm.fl_kind[0]).prop("checked",true);
	$(document.fl_search_frm.fl_kind[1]).prop("checked",true);
}

for(var n=0;n<document.fl_search_frm.fl_kind.length;n++){
	if(kkind == document.fl_search_frm.fl_kind[n].value){
		$(document.fl_search_frm.fl_kind[n]).prop("checked",true);
	}
}


//-------------------------------------------------------------- 옵션추가 

for(var n =20;n<51;n++){
	if(s_ages == n){
		s_age_option[n] = $("<option value='"+n+"' class='s_age' selected >").append(n);	
	}else{
		s_age_option[n] = $("<option value='"+n+"' class='s_age' >").append(n);	
	}
	
	if(e_ages == n){
		e_age_option[n] = $("<option value='"+n+"' class='e_age' selected >").append(n);	
	}else{
		e_age_option[n] = $("<option value='"+n+"' class='e_age' >").append(n);	
	}
	
	
	
	$("#s_age").append(s_age_option);
	$("#e_age").append(e_age_option);
	
} // 나이

for(var n=0;n<11;n++){
		if(s_crr == ""){ s_crr = null;}
		if(e_crr == ""){ e_crr = null;}
		if(s_crr == n){
			s_carreer_option[n] = $("<option value='"+n+"' class='s_carreer' selected>").append(n);	
			
		}else{
			s_carreer_option[n] = $("<option value='"+n+"' class='s_carreer' >").append(n);	
			
		}
		
		if( e_crr == n){
			e_carreer_option[n] = $("<option value='"+n+"' class='e_carreer' selected >").append(n);
			
		}else{
			e_carreer_option[n] = $("<option value='"+n+"' class='e_carreer' >").append(n);
			
		}
	
	$("#s_carreer").append(s_carreer_option);
	$("#e_carreer").append(e_carreer_option);
	
}// 경력


for(var n=1;n<=31;n++){
	
	if(n < 10){
		if(send_days_arr[2] == n ){
			send_day_day_option[n] = $("<option value='0"+n+"' class='send_day_day_option' selected>").append(n);
			
		}else{
			send_day_day_option[n] = $("<option value='0"+n+"' class='send_day_day_option'>").append(n);
			
		}
		
		if( e_send_days_arr[2] == n){
			e_send_day_day_option[n] = $("<option value='0"+n+"' class='e_send_day_day_option' selected>").append(n);
			
		}else{
			e_send_day_day_option[n] = $("<option value='0"+n+"' class='e_send_day_day_option'>").append(n);
			
		}
		
		if(checked_days_arr[2] == n){
			check_day_day[n] = $("<option value='0"+n+"' class='check_day_day' selected>").append(n);
		}else{
			check_day_day[n] = $("<option value='0"+n+"' class='check_day_day'>").append(n);			
		}
		
		if(e_checked_days_arr[2] == n){
			e_check_day_day[n] = $("<option value='0"+n+"' class='e_check_day_day' selected>").append(n);
		}else{
			e_check_day_day[n] = $("<option value='0"+n+"' class='e_check_day_day'>").append(n);		
		}
		
		if(con_d_arr[2] == n){
			consult_day_option[n] = $("<option value='0"+n+"' class='consult_day_option' selected>").append(n);
		}else{
			consult_day_option[n] = $("<option value='0"+n+"' class='consult_day_option'>").append(n);
		}
		
		if(e_con_d_arr[2] == n){
			e_consult_day_option[n] = $("<option value='0"+n+"' class='e_consult_day_option' selected>").append(n);
		}else{
			e_consult_day_option[n] = $("<option value='0"+n+"' class='e_consult_day_option'>").append(n);
		}
		
		
	}else{
		if(send_days_arr[2] == n){
			send_day_day_option[n] = $("<option value='"+n+"' class='send_day_day_option' selected>").append(n);
			
		}else{
			send_day_day_option[n] = $("<option value='"+n+"' class='send_day_day_option'>").append(n);
			
		}
		
		if( e_send_days_arr[2] == n){
			e_send_day_day_option[n] = $("<option value='"+n+"' class='e_send_day_day_option' selected>").append(n);
			
		}else{
			e_send_day_day_option[n] = $("<option value='"+n+"' class='e_send_day_day_option'>").append(n);
			
		}
		

		if(checked_days_arr[2] == n){
			check_day_day[n] = $("<option value='0"+n+"' class='check_day_day' selected>").append(n);
		}else{
			check_day_day[n] = $("<option value='0"+n+"' class='check_day_day'>").append(n);			
		}
		
		if(e_checked_days_arr[2] == n){
			e_check_day_day[n] = $("<option value='"+n+"' class='e_check_day_day' selected>").append(n);
		}else{
			e_check_day_day[n] = $("<option value='"+n+"' class='e_check_day_day'>").append(n);		
		}

		if(con_d_arr[2] == n){
			consult_day_option[n] = $("<option value='"+n+"' class='consult_day_option' selected>").append(n);
		}else{
			consult_day_option[n] = $("<option value='"+n+"' class='consult_day_option'>").append(n);
		}
		
		if(e_con_d_arr[2] == n){
			e_consult_day_option[n] = $("<option value='"+n+"' class='e_consult_day_option' selected>").append(n);
		}else{
			e_consult_day_option[n] = $("<option value='"+n+"' class='e_consult_day_option'>").append(n);
		}
		
	}

	$("#consult_day").append(consult_day_option[n]);
	$("#carreer_check_day").append(check_day_day[n]);
	$("#send_day_day").append(send_day_day_option[n]);
	$("#e_consult_day").append(e_consult_day_option[n]);
	$("#e_send_day_day").append(e_send_day_day_option[n]);
	$("#e_carreer_check_day").append(e_check_day_day[n]);
} // 일

for(var n=1;n<=12;n++){
	
	if(n < 10){
		if(send_days_arr[1] == n ){
			send_day_month_option[n] = $("<option value='0"+n+"' class='send_day_month_option' selected>").append(n);
			
		}else{
			send_day_month_option[n] = $("<option value='0"+n+"' class='send_day_month_option'>").append(n);
			
		}
		
		if( e_send_days_arr[1] == n ){
			e_send_day_month_option[n] = $("<option value='0"+n+"' class='e_send_day_month_option' selected>").append(n);
			
		}else{
			e_send_day_month_option[n] = $("<option value='0"+n+"' class='e_send_day_month_option'>").append(n);
			
		}
		
		if( checked_days_arr[1] == n){
			check_day_month[n] = $("<option value='0"+n+"' class='check_day_month' selected>").append(n);
			
		}else{
			check_day_month[n] = $("<option value='0"+n+"' class='check_day_month' >").append(n);
		}
		
		if( e_checked_days_arr[1] == n){
			e_check_day_month[n] = $("<option value='0"+n+"' class='e_check_day_month' selected>").append(n);
			
		}else{
			e_check_day_month[n] = $("<option value='0"+n+"' class='e_check_day_month' >").append(n);
			
		}
		
		if(con_d_arr[1] == n){
			consult_month_option[n] = $("<option value='0"+n+"' class='consult_month_option' selected>").append(n);
		}else{
			consult_month_option[n] = $("<option value='0"+n+"' class='consult_month_option'>").append(n);
		}
		
		if(e_con_d_arr[1] == n){
			e_consult_month_option[n] = $("<option value='0"+n+"' class='e_consult_month_option' selected>").append(n);
		}else{
			e_consult_month_option[n] = $("<option value='0"+n+"' class='e_consult_month_option'>").append(n);
		}
		
		
	}else{
		if( e_checked_days_arr[1] == n){
			e_check_day_month[n] = $("<option value='"+n+"' class='e_check_day_month' selected>").append(n);
			
		}else{
			e_check_day_month[n] = $("<option value='"+n+"' class='e_check_day_month'>").append(n);
		}
		
		if(checked_days_arr[1] == n ){
			check_day_month[n] = $("<option value='"+n+"' class='check_day_month' selected>").append(n);
			
		}else{
			check_day_month[n] = $("<option value='"+n+"' class='check_day_month'>").append(n);
		}
		
		if( e_send_days_arr[1] == n ){
			e_send_day_month_option[n] = $("<option value='"+n+"' class='e_send_day_month_option' selected>").append(n);
			
		}else{
			e_send_day_month_option[n] = $("<option value='"+n+"' class='e_send_day_month_option'>").append(n);
		}
		
		if(send_days_arr[1] == n ){
			send_day_month_option[n] = $("<option value='"+n+"' class='send_day_month_option' selected>").append(n);
			
		}else{
			send_day_month_option[n] = $("<option value='"+n+"' class='send_day_month_option'>").append(n);
		}
		
		if(con_d_arr[1] == n){
			consult_month_option[n] = $("<option value='"+n+"' class='consult_month_option' selected>").append(n);
		}else{
			consult_month_option[n] = $("<option value='"+n+"' class='consult_month_option'>").append(n);
		}
		
		if(e_con_d_arr[1] == n){
			e_consult_month_option[n] = $("<option value='"+n+"' class='e_consult_month_option' selected>").append(n);
		}else{
			e_consult_month_option[n] = $("<option value='"+n+"' class='e_consult_month_option'>").append(n);
		}
	}

	$("#carreer_check_month").append(check_day_month[n]); 
	$("#consult_month").append(consult_month_option[n]);
	$("#send_day_month").append(send_day_month_option[n]);
	$("#e_consult_month").append(e_consult_month_option[n]);
	$("#e_send_day_month").append(e_send_day_month_option[n]);
	$("#e_carreer_check_month").append(e_check_day_month[n]);
} // 월



for(var n=1986;n<=now_year;n++){
	if(gradu1 == n){
		graduate_option_year[n] = $("<option value='"+n+"' class='graduate_year_op' selected>").append(n);
	}else{
		graduate_option_year[n] = $("<option value='"+n+"' class='graduate_year_op'>").append(n);
	}
	
	if(gradu2 == n){
		e_graduate_option_year[n] = $("<option value='"+n+"' class='e_graduate_year_op' selected>").append(n);
	}else{
		e_graduate_option_year[n] = $("<option value='"+n+"' class='e_graduate_year_op'>").append(n);
		
	}
	$("#s_year").append(graduate_option_year[n]);
	$("#e_year").append(e_graduate_option_year[n]);
} // 졸업년도


for(var n=2000;n<=now_year;n++){
	if(checked_days_arr[0] == n ){
		check_day_year[n] = $("<option value='"+n+"' class='check_day_year' selected>").append(n);
	}else{
		check_day_year[n] = $("<option value='"+n+"' class='check_day_year'>").append(n);
	}
	
	if( e_checked_days_arr[0] == n ){
		e_check_day_year[n] = $("<option value='"+n+"' class='check_day_year' selected>").append(n);
	}else{
		e_check_day_year[n] = $("<option value='"+n+"' class='check_day_year'>").append(n);
	}
	
	if(con_d_arr[0] == n){
		consult_year_option[n] = $("<option value='"+n+"' class='consult_year_option' selected>").append(n);
	}else{
		consult_year_option[n] = $("<option value='"+n+"' class='consult_year_option'>").append(n);
	}
	
	if(e_con_d_arr[0] == n){
		e_consult_year_option[n] = $("<option value='"+n+"' class='e_consult_year_option' selected>").append(n);
	}else{
		e_consult_year_option[n] = $("<option value='"+n+"' class='e_consult_year_option'>").append(n);
	}
	
	$("#carreer_check_year").append(check_day_year[n]);
	$("#consult_year").append(consult_year_option[n]);
	$("#e_carreer_check_year").append(e_check_day_year[n]);
	$("#e_consult_year").append(e_consult_year_option[n]);
} // 경력확인 년

for(var n=now_year;n<=now_year+5;n++){
	if(send_days_arr[0] == n ){
		send_day_year_option[n] = $("<option value='"+n+"' class='send_day_year_option' selected>").append(n);
		
	}else{
		send_day_year_option[n] = $("<option value='"+n+"' class='send_day_year_option'>").append(n);
		
	}
	
	if( e_send_days_arr[0] == n){
		e_send_day_year_option[n] = $("<option value='"+n+"' class='e_send_day_year_option' selected>").append(n);	
		
	}else{
		e_send_day_year_option[n] = $("<option value='"+n+"' class='e_send_day_year_option'>").append(n);	
		
	}
	
	$("#send_day_year").append(send_day_year_option[n]);
	$("#e_send_day_year").append(e_send_day_year_option[n]);
}// 파견가능일 년도


















</script>