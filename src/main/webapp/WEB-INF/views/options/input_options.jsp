<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>

// 출생년도 option
var birth_option=[];
var model_birth = "${freelancer.fl_birth}";

//졸업년도 option
var graduate_option_year= [];
var graduate_option_month=[];

var model_graduate_day = "${freelancer.fl_graduate_day}";
var model_graduate_day_arr = model_graduate_day.split("-");


//개발년차 option
var carreer_option_year = [] ;
var carreer_option_month = [] ;
var check_day_year = [] ;
var check_day_month = [] ;
var check_day_day = [] ;

var model_carreer = "${freelancer.carreer}";
var model_carreer_arr = model_carreer.split("-");

var model_checked_day = "${freelancer.checked_day}";
var model_checked_day_arr = model_checked_day.split("-");


//상담시간, 파견가능일 option
var consult_year_option = [];
var consult_month_option = [];
var consult_day_option = [];
var consult_hour_option = [];
var consult_minute_option = [];

var model_consult_day = "${freelancer.fl_consult_day}";
var model_consult_day_arr = model_consult_day.split("-");

var send_day_year_option = [] ;
var send_day_month_option = [] ;
var send_day_day_option = [] ;

var model_send_day = "${freelancer.fl_send_day}";
var model_send_day_arr = model_send_day.split("-");

//개발단가, 운영단가
var s_develop_price_option = [] ;
var e_develop_price_option = [] ;
var s_op_price_option = [] ;
var e_op_price_option = [] ;

var model_d_min = "${freelancer.d_min_price}";
var model_d_max = "${freelancer.d_max_price}";
var model_o_min = "${freelancer.o_min_price}";
var model_o_max = "${freelancer.o_max_price}";


for(var n=1;n<=31;n++){
	
	if(n < 10){
		if(n == model_checked_day_arr[2] || n == model_consult_day_arr[2] || n == model_send_day_arr[2]){
			check_day_day[n] = $("<option value='0"+n+"' class='check_day_day' selected>").append(n);			
			consult_day_option[n] = $("<option value='0"+n+"' class='consult_day_option' selected>").append(n);
			send_day_day_option[n] = $("<option value='0"+n+"' class='send_day_day_option' selected>").append(n);
		}else{
			check_day_day[n] = $("<option value='0"+n+"' class='check_day_day'>").append(n);
			consult_day_option[n] = $("<option value='0"+n+"' class='consult_day_option'>").append(n);
			send_day_day_option[n] = $("<option value='0"+n+"' class='send_day_day_option'>").append(n);
		}
		
	}else{
		if(n == model_checked_day_arr[2] || n == model_consult_day_arr[2] || n == model_send_day_arr[2]){
			check_day_day[n] = $("<option value='"+n+"' class='check_day_day' selected>").append(n);
			consult_day_option[n] = $("<option value='0"+n+"' class='consult_day_option' selected>").append(n);
			send_day_day_option[n] = $("<option value='"+n+"' class='send_day_day_option' selected>").append(n);		
		}else{
			check_day_day[n] = $("<option value='"+n+"' class='check_day_day'>").append(n);
			consult_day_option[n] = $("<option value='"+n+"' class='consult_day_option'>").append(n);
			send_day_day_option[n] = $("<option value='"+n+"' class='send_day_day_option'>").append(n);
		}
		
	}
	
	$("#consult_day").append(consult_day_option[n]);
	$("#send_day_day").append(send_day_day_option[n]);
	$("#carreer_check_day").append(check_day_day[n]);
} // 일

for(var n=1;n<=12;n++){
	
	if(n < 10){
		if(n==model_graduate_day_arr[1] || n == model_carreer_arr[1] || n == model_consult_day_arr[1] || n == model_send_day_arr[1]){
			graduate_option_month[n] = $("<option value='0"+n+"' class='graduate_month_op' selected>").append(n);
			check_day_month[n] = $("<option value='0"+n+"' class='check_day_month' selected>").append(n);
			consult_month_option[n] = $("<option value='0"+n+"' class='consult_month_option' selected>").append(n);
			send_day_month_option[n] = $("<option value='0"+n+"' class='send_day_month_option' selected>").append(n);			
		}else{
			graduate_option_month[n] = $("<option value='0"+n+"' class='graduate_month_op'>").append(n);
			check_day_month[n] = $("<option value='0"+n+"' class='check_day_month'>").append(n);
			consult_month_option[n] = $("<option value='0"+n+"' class='consult_month_option'>").append(n);
			send_day_month_option[n] = $("<option value='0"+n+"' class='send_day_month_option'>").append(n);
		}
		
		
		
	}else{
		if(n==model_graduate_day_arr[1]){
			graduate_option_month[n] = $("<option value='"+n+"' class='graduate_month_op' selected>").append(n);
		}else{
			graduate_option_month[n] = $("<option value='"+n+"' class='graduate_month_op'>").append(n);
		}
		
		consult_month_option[n] = $("<option value='"+n+"' class='consult_month_option'>").append(n);
		send_day_month_option[n] = $("<option value='"+n+"' class='send_day_month_option'>").append(n);
		check_day_month[n] = $("<option value='"+n+"' class='check_day_month'>").append(n);
	}
	
	$("#s_month").append(graduate_option_month[n]);
	$("#consult_month").append(consult_month_option[n]);
	$("#send_day_month").append(send_day_month_option[n]);
	$("#carreer_check_month").append(check_day_month[n]);
} // 월

for(var n=0;n<=11;n++){
	
		if(n==model_carreer_arr[1]){
			carreer_option_month[n] = $("<option value='"+n+"' class='carreer_option_month' selected>").append(n);			
		}else{
			carreer_option_month[n] = $("<option value='"+n+"' class='carreer_option_month'>").append(n);
		}
	
	$("#carreer_month").append(carreer_option_month[n]);
} // 경력 월

for(var n=(now_year-19)-30;n<=now_year-19;n++){
	if(n == model_birth){
		birth_option[n] = $("<option value='"+n+"' class='birth_op' selected>").append(n);
	}else{
		birth_option[n] = $("<option value='"+n+"' class='birth_op'>").append(n);
		
	}
	$("#fl_birth").append(birth_option[n]);
} // 출생년도 

for(var n=now_year-30;n<=now_year;n++){
	if(n==model_graduate_day_arr[0]){
		graduate_option_year[n] = $("<option value='"+n+"' class='graduate_year_op' selected>").append(n);
	}else{
		graduate_option_year[n] = $("<option value='"+n+"' class='graduate_year_op'>").append(n);
		
	}
	$("#s_year").append(graduate_option_year[n]);
} // 졸업년도

for(var n=now_year-16;n<=now_year;n++){
	
	if(n == model_checked_day_arr[0] || n == model_consult_day_arr[0]){
		check_day_year[n] = $("<option value='"+n+"' class='check_day_year' selected>").append(n);
		
		consult_year_option[n] = $("<option value='"+n+"' class='consult_year_option' selected>").append(n);
		
	}else{
		check_day_year[n] = $("<option value='"+n+"' class='check_day_year'>").append(n);
		
		consult_year_option[n] = $("<option value='"+n+"' class='consult_year_option'>").append(n);
	}
	
	
	$("#carreer_check_year").append(check_day_year[n]);
	$("#consult_year").append(consult_year_option[n]);
} // 경력확인 년

for(var n=now_year;n<=now_year+5;n++){
	if(n == model_send_day_arr[0]){
		send_day_year_option[n] = $("<option value='"+n+"' class='send_day_year_option' selected>").append(n);	
	}else{
		send_day_year_option[n] = $("<option value='"+n+"' class='send_day_year_option'>").append(n);
	}
	
	$("#send_day_year").append(send_day_year_option[n]);
}// 파견가능일 년도

for(var n =0;n<=10;n++){
	
	if(n==model_carreer_arr[0]){
		carreer_option_year[n] = $("<option value='"+n+"' class='carreer_option_year' selected>").append(n);
	}else{
		carreer_option_year[n] = $("<option value='"+n+"' class='carreer_option_year'>").append(n);
	}
	
	
	$("#carreer_year").append(carreer_option_year[n]);

} // 경력 년

if(model_carreer == ""){
	$("#carreer_year").children().eq(1).prop("selected",false);
}

for(var n=0;n<=23;n++){
	
	if(n < 10 && n!=0){
		if(n == model_consult_day_arr[3]){
			consult_hour_option[n] = $("<option value='0"+n+"' class='consult_hour_option' selected>").append(n);			
		}else{
			consult_hour_option[n] = $("<option value='0"+n+"' class='consult_hour_option'>").append(n);
		}
	}else{
		if(n == model_consult_day_arr[3]){
			consult_hour_option[n] = $("<option value='"+n+"' class='consult_hour_option' selected>").append(n);			
		}else{
			consult_hour_option[n] = $("<option value='"+n+"' class='consult_hour_option'>").append(n);
		}
	}
	
	$("#consult_hour").append(consult_hour_option[n]);
} // 상담시간 시

for(var n=1;n<=59;n++){
	
	if(n < 10){
		if(n == model_consult_day_arr[4]){
			consult_minute_option[n] = $("<option value='0"+n+"' class='consult_minute_option' selected>").append(n);			
		}else{
			consult_minute_option[n] = $("<option value='0"+n+"' class='consult_minute_option'>").append(n);
		}
	}else{
		if(n == model_consult_day_arr[4]){
			consult_minute_option[n] = $("<option value='"+n+"' class='consult_minute_option' selected>").append(n);			
		}else{
			consult_minute_option[n] = $("<option value='"+n+"' class='consult_minute_option'>").append(n);
		}
	}
	
	$("#consult_minute").append(consult_minute_option[n]);
} // 상담시간 분

for(var n=1;n<=14;n++){
	if((n*50) == model_d_min ){
		s_develop_price_option[n] = $("<option value='"+n*50+"' class='s_develop_price_option' selected>").append(n*50);		
	}else{
		s_develop_price_option[n] = $("<option value='"+n*50+"' class='s_develop_price_option'>").append(n*50);
	}
	
	if((n*50) == model_d_max){
		e_develop_price_option[n] = $("<option value='"+n*50+"' class='e_develop_price_option' selected>").append(n*50);
	}else{
		e_develop_price_option[n] = $("<option value='"+n*50+"' class='e_develop_price_option'>").append(n*50);
	}
	
	if((n*50) == model_o_min ){
		s_op_price_option[n] = $("<option value='"+n*50+"' class='s_op_price_option' selected>").append(n*50);
	}else{
		s_op_price_option[n] = $("<option value='"+n*50+"' class='s_op_price_option'>").append(n*50);
	}
	
	if((n*50) == model_o_max){
		e_op_price_option[n] = $("<option value='"+n*50+"' class='e_op_price_option' selected>").append(n*50);
	}else{
		e_op_price_option[n] = $("<option value='"+n*50+"' class='e_op_price_option'>").append(n*50);
	}
	
	$("#s_develop_price").append(s_develop_price_option[n]);
	$("#e_develop_price").append(e_develop_price_option[n]);
	
	$("#s_op_price").append(s_op_price_option[n]);
	$("#e_op_price").append(e_op_price_option[n]);
} // 개발단가, 운영단가














</script>