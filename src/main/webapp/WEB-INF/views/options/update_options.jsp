<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>




/* 데이터 출력 */

var model_gender = "${freelancer.fl_gender}";
var model_phone_chk = "${freelancer.fl_phone_check}";
var model_school_code = "${freelancer.school_code}"
var model_job = "${freelancer.job_code}";
var model_d_fixed = "${freelancer.d_fixed}";
var model_o_fixed = "${freelancer.o_fixed}";
var model_d_nego = "${freelancer.d_nego}";
var model_o_nego = "${freelancer.o_nego}";
var model_notebook = "${freelancer.fl_notebook}";
var model_area = "${freelancer.area_code}";


var model_role = "${freelancer.role_code}";
var model_role_arr = model_role.split(",");

var model_own_skill = "${freelancer.own_skill_code}";
var model_own_skill_arr = model_own_skill.split(",");

var model_certi = "${freelancer.certi_code}";
var model_certi_arr = model_certi.split(",");

var model_able_area = "${freelancer.able_area_code}";
var model_able_area_arr = model_able_area.split(",");

var model_favorite = "${freelancer.favorite_code}";
var model_favorite_arr = model_favorite.split(",");

var model_handicap = "${freelancer.handicap_code}";
var model_handicap_arr = model_handicap.split(",");

for(var n =0;n<model_handicap_arr.length;n++){
	for(var m=0;m<document.fl_update_frm.handicap_code.length;m++){
		if(model_handicap_arr[n] == $(document.fl_update_frm.handicap_code[m]).attr("value") ){
			$(document.fl_update_frm.handicap_code[m]).prop("checked",true);
		}
	}
}

for(var n =0;n<model_own_skill_arr.length;n++){
	for(var m=0;m<document.fl_update_frm.own_skill_code.length;m++){
		if(model_own_skill_arr[n] == $(document.fl_update_frm.own_skill_code[m]).attr("value") ){
			$(document.fl_update_frm.own_skill_code[m]).prop("checked",true);
		}
	}
}

for(var n =0;n<model_role_arr.length;n++){
	for(var m=0;m<document.fl_update_frm.role_code.length;m++){
		if(model_role_arr[n] == $(document.fl_update_frm.role_code[m]).attr("value") ){
			$(document.fl_update_frm.role_code[m]).prop("checked",true);
		}
	}
}

for(var n =0;n<model_certi_arr.length;n++){
	for(var m=0;m<document.fl_update_frm.certi_code.length;m++){
		if(model_certi_arr[n] == $(document.fl_update_frm.certi_code[m]).attr("value") ){
			$(document.fl_update_frm.certi_code[m]).prop("checked",true);
		}
	}
}

for(var n =0;n<model_able_area_arr.length;n++){
	for(var m=0;m<document.fl_update_frm.able_area_code.length;m++){
		if(model_able_area_arr[n] == $(document.fl_update_frm.able_area_code[m]).attr("value") ){
			$(document.fl_update_frm.able_area_code[m]).prop("checked",true);
		}
	}
}

for(var n =0;n<model_favorite_arr.length;n++){
	for(var m=0;m<document.fl_update_frm.favorite_code.length;m++){
		if(model_favorite_arr[n] == $(document.fl_update_frm.favorite_code[m]).attr("value") ){
			$(document.fl_update_frm.favorite_code[m]).prop("checked",true);
		}
	}
}


for(var n=0; n<2; n++){
	if(document.fl_update_frm.fl_gender[n].value == model_gender){
		$(document.fl_update_frm.fl_gender[n]).prop("checked",true);
	}
}

if(model_phone_chk == "y"){
	$("#fl_phone_check").prop("checked",true);
}

for(var n=0;n<=document.fl_update_frm.school_code.length;n++){
	if($(document.fl_update_frm.school_code).children().eq(n).attr("value") == model_school_code){
		$(document.fl_update_frm.school_code).children().eq(n).prop("selected",true);
	}
}

for(var n=0;n<document.fl_update_frm.job_code.length;n++){
	if(document.fl_update_frm.job_code[n].value == model_job){
		$(document.fl_update_frm.job_code[n]).prop("checked",true);
	}
}

if(model_d_fixed == 'y'){$("#d_fixed").prop("checked",true);}
if(model_o_fixed == 'y'){$("#o_fixed").prop("checked",true);}
if(model_d_nego == 'y'){$("#d_nego").prop("checked",true);}
if(model_o_nego == 'y'){$("#o_nego").prop("checked",true);}

if(model_notebook == 'y'){$("#notebook").prop("checked",true);}

for(var n=0;n<document.fl_update_frm.area_code.length;n++){
	if(model_area == document.fl_update_frm.area_code[n].value){
		$(document.fl_update_frm.area_code[n]).prop("selected",true);
	}
}

carreerCount();



















</script>