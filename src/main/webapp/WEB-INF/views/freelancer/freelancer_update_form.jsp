<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프리랜서 정보 수정</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/freelancer.css" rel="stylesheet">
<script src="js/jquery-1.11.3.min.js" ></script>
</head>
<body>
<h1 id="page_title">프리랜서 정보 수정</h1>
<div id="wrap"> <!-- wrap S -->
	<form action="" method="post" name="fl_update_frm">
		<table class="fl_table">
			<tr>
				<th colspan="8" class="fir_th">프리랜서 정보 수정</th>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="fl_name" value="${freelancer.fl_name }" /></td>
				<th>성별</th>
				<td>
					<input type="radio" name="fl_gender" id="gender_m" value="남자" /><label for="gender_m">남자</label>
					<input type="radio" name="fl_gender" id="gender_w" value="여자" /><label for="gender_w">여자</label>
				</td>
				<th>이메일</th>
				<td><input type="email" name="fl_email" value=${freelancer.fl_email } /></td>
				<th>핸드폰</th>
				<td>
					<input type="text" name="fl_phone" value=${freelancer.fl_phone } />
					<input type="checkbox" name="fl_phone_check" value="y" id="fl_phone_check" /><label for="fl_phone_check">전화번호틀림</label>
				</td>
			</tr>
			<tr>
				<th>출생년도</th>
				<td>
					<select name="fl_birth" id="fl_birth">
						<option value=""></option>
					</select> 년생
				</td>
				<th>최종학력</th>
				<td>
					<select name="school_code">
						<option value=""></option>
						<c:forEach var="s" items="${school }">
							<option value="${s.school_code }" >${s.school_name }</option>
						</c:forEach>
					</select>
				</td>
				<th>졸업년도</th>
				<td colspan="3">
					<select name="s_year" id="s_year">
						<option value=""></option>
					</select> 년
					<select name="s_month" id="s_month">
						<option value=""></option>
					</select> 월
					<input type="hidden" value="" name="fl_graduate_day" />
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>추정 개발년차</th>
				<td colspan="7">
					<span class="crr_y">0</span>년
					<span class="crr_m">0</span>개월
					(<span class="crr_y">0</span>년차)
				</td>
			</tr>
			<tr>
				<th>이력서 상 개발년차</th>
				<td colspan="7">
					<select name="carreer_year" id="carreer_year">
						<option value=""></option>
					</select> 년
					<select name="carreer_month" id="carreer_month">
						<option value=""></option>
					</select> 개월
					<span class="special_character">(</span>
					<select name="carreer_check_year" id="carreer_check_year">
						<option value=""></option>
					</select> 년 
					<select name="carreer_check_month" id="carreer_check_month">
						<option value=""></option>
					</select> 월 
					<select name="carreer_check_day" id="carreer_check_day">
						<option value=""></option>
					</select> 일  날짜기준
					<span class="special_character">)</span>
					<input type="hidden" name="carreer" value="" />
					<input type="hidden" name="checked_day" value="" />
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>블랙개발자</th>
				<td colspan="7">
					<c:forEach var="h" items="${handicap }">
						<input type="checkbox" name="handicap_code" id="handicap_${h.handicap_code }" value="${h.handicap_code }" /><label for="handicap_${h.handicap_code }">${h.handicap_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>상담시간</th>
				<td colspan="7" class="consult_td">
					<select name="consult_year" id="consult_year">
						<option value=""></option>
					</select> 년
					<select name="" id="consult_month">
						<option value=""></option>
					</select> 월
					<select name="" id="consult_day">
						<option value=""></option>
					</select> 일
					<select name="" id="consult_hour">
						<option value=""></option>
					</select> 시
					<select name="" id="consult_minute">
						<option value=""></option>
					</select> 분
					<input type="button" value="지금" onclick="selectToday()" /> 
					<input type="button" value="비움" onclick="toodayUnchoose()" /> 
					<input type="hidden" name="fl_consult_day" value="" /> 
				</td>
			</tr>
			<tr>
				<th>현재직업</th>
				<td colspan="7">
					<c:forEach var="j" items="${job }">
						<input type="radio" name="job_code" id="job_code_${j.job_code }" value="${j.job_code }" /><label for="job_code_${j.job_code }">${j.job_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>소유시킬</th>
				<td colspan="7">
					<c:forEach var="sk" items="${skill }">
						<input type="checkbox" name="own_skill_code" id="own_skill_code_${sk.own_skill_code }" value="${sk.own_skill_code }" /><label for="own_skill_code_${sk.own_skill_code }">${sk.own_skill_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>파견역할</th>
				<td colspan="7">
					<c:forEach var="r" items="${role }">
						<input type="checkbox" name="role_code" id="role_code_${r.role_code }" value="${r.role_code}" /><label for="role_code_${r.role_code }">${r.role_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>파견가능일</th>
				<td colspan="7">
					<select name="send_day_year" id="send_day_year">
						<option value=""></option>
					</select> 년
					<select name="" id="send_day_month">
						<option value=""></option>
					</select> 월
					<select name="" id="send_day_day">
						<option value=""></option>
					</select> 일
					<input type="checkbox" name="fl_send_day_check" value="y" id="flsdc" /><label for="flsdc">확정</label>
					<input type="hidden" name="fl_send_day" value="" />
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>개발단가</th>
				<td colspan="7">
					<select name="d_min_price" id="s_develop_price">
						<option value=""></option>
					</select> 만원 ~ 
					<select name="d_max_price" id="e_develop_price">
						<option value=""></option>
					</select> 만원
					<input type="checkbox" name="d_fixed" value="y" id="d_fixed" /><label for="fixed">단가고정</label>
					<input type="checkbox" name="d_nego" value="y" id="d_nego" /><label for="nego">협상후결정</label>
				</td>
			</tr>
			<tr>
				<th>운영단가</th>
				<td colspan="7">
					<select name="o_min_price" id="s_op_price">
						<option value=""></option>
					</select> 만원 ~ 
					<select name="o_max_price" id="e_op_price">
						<option value=""></option>
					</select> 만원
					<input type="checkbox" name="o_fixed" value="y" id="o_fixed" /><label for="fixed">단가고정</label>
					<input type="checkbox" name="o_nego" value="y" id="o_nego" /><label for="nego">협상후결정</label>
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>기사자격증</th>
				<td colspan="7">
					<c:forEach var="c" items="${certi }">
						<input type="checkbox" name="certi_code" id="certi_code_${c.certi_code }" value="${c.certi_code }" /><label for="certi_code_${c.certi_code }">${c.certi_name }</label>					
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>노트북소유</th>
				<td colspan="7">
					<input type="checkbox" name="fl_notebook" value="y" id="notebook" /><label for="notebook">노트북대여희망</label>
				</td>
			</tr>
			<tr>
				<th>근무가능지역</th>
				<td colspan="7">
					<c:forEach var="aa" items="${able_area }">
						<input type="checkbox" name="able_area_code" id="able_area_code_${aa.able_area_code }" value="${aa.able_area_code }" /><label for="able_area_code_${aa.able_area_code }">${aa.able_area_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>선호분야</th>
				<td colspan="7">
					<c:forEach var="f" items="${favorite }">
						<input type="checkbox" name="favorite_code" id="favorite_code_${f.favorite_code }" value="${f.favorite_code }" /><label for="favorite_code_${f.favorite_code }">${f.favorite_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>거주지</th>
				<td colspan="7">
					<select name="area_code">
						<option value=""></option>
						<c:forEach var="a" items="${area }">
							<option value="${a.area_code }">${a.area_name }</option>
						</c:forEach>
					</select> 시
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>기타요구</th>
				<td colspan="7">
					<textarea name="detail">${freelancer.detail }</textarea>
				</td>
			</tr>
			<tr>
				<th>전화상담 시 주의사항</th>
				<td colspan="7">
					<textarea name="notice">${freelancer.notice }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="8">
					<input type="button" value="수정" onclick="updateSubmitFrm()" />
					<input type="button" value="취소" onclick="history.back()" />
				</td>
			</tr>
		</table>
	</form> <!-- form E -->
</div> <!-- wrap E -->


<jsp:include page="/js/common_js.jsp" />
<jsp:include page="/js/input_js.jsp" />
<jsp:include page="/WEB-INF/views/options/input_options.jsp" />
<jsp:include page="/WEB-INF/views/options/update_options.jsp" />

</body>
</html>