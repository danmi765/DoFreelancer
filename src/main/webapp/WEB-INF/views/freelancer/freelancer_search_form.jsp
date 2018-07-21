<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프리랜서 검색</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/freelancer.css" rel="stylesheet">
<script src="js/jquery-1.11.3.min.js" ></script>
</head>
<body>
<h1 id="page_title">프리랜서 검색</h1>
<div id="wrap"> <!-- wrap S -->
	<form action="" method="post" name="fl_search_frm">
		<table class="fl_table">
			<tr>
				<th colspan="8" class="fir_th">프리랜서 검색</th>
			</tr>
			<tr>
				<th>화이트/블랙 개발자</th>
				<td>
					<input type="checkbox" name="fl_kind" id="kind_y" value="w" /><label for="kind_y">화이트개발자</label>
					<input type="checkbox" name="fl_kind" id="kind_n" value="b" /><label for="kind_n">블랙개발자</label>
				</td>
			</tr>
			<tr>
				<th>파견가능일</th>
				<td colspan="7" class="send">
					<select name="send_day_year" id="send_day_year" >
						<option value=""></option>
					</select> 년
					<select name="" id="send_day_month"  >
						<option value=""></option>
					</select> 월
					<select name="" id="send_day_day"  >
						<option value=""></option>
					</select> 일 ~
					<select name="e_send_day_year" id="e_send_day_year"  >
						<option value=""></option>
					</select> 년
					<select name="" id="e_send_day_month"  >
						<option value=""></option>
					</select> 월
					<select name="" id="e_send_day_day"  >
						<option value=""></option>
					</select> 일
					<input type="checkbox" name="fl_send_day_check" value="y" id="flsdc" /><label for="flsdc">종료일확정</label>
					<input type="button" value="[비움]" class="empty_btn" />
					<input type="hidden" name="fl_send_day" value="${condition.fl_send_day }" />
					<input type="hidden" name="fl_e_send_day" value="${condition.fl_e_send_day }" />
				</td>
			</tr>
			<tr>
				<th>가상개발년차</th>
				<td>
					<select name="s_carreer" id="s_carreer">
						<option value=""></option>
					</select> 년차 ~
					<select name="e_carreer" id="e_carreer">
						<option value=""></option>
					</select> 년차
				</td>
			</tr>
			<tr>
				<th>소유스킬</th>
				<td colspan="7">
					<c:forEach var="sk" items="${skill }">
						<input type="checkbox" name="own_skill_code" id="own_skill_code_${sk.own_skill_code }" value="${sk.own_skill_code }" /><label for="own_skill_code_${sk.own_skill_code }">${sk.own_skill_name }</label>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>기사자격증</th>
				<td colspan="7" class="skill_td">
					<c:forEach var="c" items="${certi }">
						<input type="checkbox" name="certi_code" id="certi_code_${c.certi_code }" value="${c.certi_code }" /><label for="certi_code_${c.certi_code }">${c.certi_name }</label>					
					</c:forEach>
					<input type="button" value="[비움]" class="empty_btn" />
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
				<th>최종학력</th>
				<td class="gradu">
					<c:forEach items="${school }" var="s">
						<input type="checkbox" name="school_code" id="school_code_${s.school_code }" value="${s.school_code }" /><label for="school_code_${s.school_code }">${s.school_name }</label>
					</c:forEach>
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
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
				<th>나이</th>
				<td class="age_td">
					<select name="s_age" id="s_age">
						<option value=""></option>
					</select> 살 ~
					<select name="e_age" id="e_age">
						<option value=""></option>
					</select> 살
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
					<input type="hidden" name="fl_birth" value="${condition.fl_birth }" />
					<input type="hidden" name="fl_e_birth" value="${condition.fl_e_birth }" />
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<input type="checkbox" name="fl_gender" id="gender_m" value="남자" /><label for="gender_m">남자</label>
					<input type="checkbox" name="fl_gender" id="gender_w" value="여자" /><label for="gender_w">여자</label>
					<input type="hidden" name="" class="empty_btn" value="" />
				</td>
			</tr>
			<tr>
				<th>졸업년도</th>
				<td colspan="3" class="graday">
					<select name="s_year" id="s_year">
						<option value=""></option>
					</select> 년 ~
					<select name="e_year" id="e_year">
						<option value=""></option>
					</select> 년
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
				</td>
			</tr>
 			<tr>
				<th>이력서확인일</th>
				<td class="chkday">
					<select name="" id="carreer_check_year">
						<option value=""></option>
					</select> 년 
					<select name="" id="carreer_check_month">
						<option value=""></option>
					</select> 월 
					<select name="" id="carreer_check_day">
						<option value=""></option>
					</select> 일 ~ 
					
					<select name="" id="e_carreer_check_year">
						<option value=""></option>
					</select> 년 
					<select name="" id="e_carreer_check_month">
						<option value=""></option>
					</select> 월 
					<select name="" id="e_carreer_check_day">
						<option value=""></option>
					</select> 일
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
					<input type="hidden" value="" name="checked_day" value="${condition.checked_day }" /> 
					<input type="hidden" value="" name="e_checked_day" value="${condition.e_checked_day }" /> 
				</td>
			</tr> 
			<tr>
				<th>상담시각</th>
				<td class="consu">
					<select name="" id="consult_year">
						<option value=""></option>
					</select> 년
					<select name="" id="consult_month">
						<option value=""></option>
					</select> 월
					<select name="" id="consult_day">
						<option value=""></option>
					</select> 일 ~
					
					<select name="" id="e_consult_year">
						<option value=""></option>
					</select> 년
					<select name="" id="e_consult_month">
						<option value=""></option>
					</select> 월
					<select name="" id="e_consult_day">
						<option value=""></option>
					</select> 일
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
					<input type="hidden" name="fl_consult_day" value="${condition.fl_consult_day }" />
					<input type="hidden" name="fl_e_consult_day" value="${condition.fl_e_consult_day }" />
				</td>
			</tr>
			<tr>
				<th>현재직업</th>
				<td colspan="7" class="jod_td">
					<c:forEach var="j" items="${job }">
						<input type="checkbox" name="job_code" id="job_code_${j.job_code }" value="${j.job_code }" /><label for="job_code_${j.job_code }">${j.job_name }</label>
					</c:forEach>
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<th>키워드</th>
				<td class="keyw">
					<input type="text" name="keyword1" value="${condition.keyword1 }" />
					<select name="operators">
						<option value="or">or</option>
						<option value="and">and</option>
					</select>
					<input type="text" name="keyword2" value="${condition.keyword2 }"  />
					<input type="button" value="[비움]" class="empty_btn" onclick="" />
				</td>
			</tr>
			<tr>
				<td class="empty_td">empty</td>
			</tr>
			<tr>
				<td colspan="8" class="search_btn_box">
					<input type="button" value="검색" onclick="searchSubmit()" class="search_button" />
					<input type="button" value="초기화 후 전부검색" onclick="location.href='freelancer_search_form.do?allList=y'" class="search_button" />
					<input type="button" value="[프리랜서] 입력" onclick="location.href='freelancer_insert_form.do'" class="search_button" />
					
					<input type="hidden" name="allList" id="allList" value="${allList }" />
					<input type="hidden" name="page" id="paging_page" value="" />
					<input type="hidden" name="pagesize" id="page_size" value="${pagesize }" />
					<input type="hidden" name="orderby" id="page_orderby" value="${condition.orderby}" />
				</td>
			</tr>
		</table>
	</form> <!-- search form E -->
		
	<div id="list_wrap">
		<c:if test="${totcount != '0' and searchList !=null }">
			<div class="sortAndTot">
				<div class="sort_box">
					[정렬]
					<select name="orderby" id="orderby">
						<option value=""></option>
						<option value="fl_send_day asc , carreer desc">파견가능일 빠른순 / 경력 높은순</option>
						<option value="fl_birth desc , carreer asc">나이어린순 / 경력 높은순</option>
					</select>
				</div>
				<div class="tot_box">
					검색개수 => ${pagesize }
					<select name="" id="rowperpage">
						<option value="10">10행보기</option>
						<option value="20">20행보기</option>
						<option value="30">30행보기</option>
					</select>
				</div>
			</div>
		</c:if>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>성별</th>
					<th>나이</th>
					<th>학력</th>
					<th>가상년차</th>
					<th>파견가능일</th>
					<th>파견가능일확정</th>
					<th>핸드폰</th>
					<th>이메일</th>
					<th>소유스킬</th>
					<th>전화상담일</th>
					<th>이력서확인일</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${totcount != '0' }">
					<c:forEach items="${searchList }" var="list" begin="${paging.startno }" end="${paging.endno  }">
						<tr class="contents_tr">
							<td>${list.num }</td>
							<td><a href="freelancer_update_form.do?fl_no=${list.fl_no }">${list.fl_name }</a></td>
							<td>${list.fl_gender }</td>
							<td>${list.age }</td>
							<td>${list.school_name }</td>
							<td>${list.carreer }</td>
							<td>${list.fl_send_day }</td>
							<td>
								<c:if test="${list.fl_send_day_check == 'y' }">
									확정
								</c:if>
								<c:if test="${list.fl_send_day_check == 'n' }">
									미정
								</c:if>
							</td>
							<td>${list.fl_phone }</td>
							<td>${list.fl_email }</td>
							<td>${fn:substring(list.own_skill_name,0,10)}...</td>
							<%-- <td>${list.own_skill_name}</td> --%>
							<td>${fn:substring(list.fl_consult_day,0,10)}</td>
							<td>${list.checked_day }</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${totcount == '0' }">
					<tr>
						<td colspan="13">검색결과가 없습니다.</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<c:if test="${totcount != '0' and searchList !=null  }">
			<div id="paging">
				<form action="" method="post" name="page_frm">
					<input type="button" value="[처음]" onclick="paging(${paging.firstpage})" class="page_btn" />
					<input type="button" value="[이전]" onclick="paging(${paging.prevpage})" class="page_btn" />
					<p>
						<c:forEach var="i" begin="1" end="${paging.lastpage }" step="1">
							<c:choose>
				                <c:when test="${i eq paging.page}">
				                	${i}
				                </c:when>
				                <c:otherwise>
				                	<input type="button" value="[${i }]" onclick="paging(${i})" class="page_btn" />
				                </c:otherwise> 
				            </c:choose>
						</c:forEach>
					</p>
					<input type="button" value="[다음]" onclick="paging(${paging.nextpage})" class="page_btn" />
					<input type="button" value="[마지막]" onclick="paging(${paging.lastpage})" class="page_btn" />
				</form>
			</div> <!-- paging -->
		</c:if>
	</div> <!-- list wrap E -->
	
</div> <!-- wrap E -->


<jsp:include page="/js/common_js.jsp" />
<jsp:include page="/js/input_js.jsp" />
<jsp:include page="/js/search_vali.jsp" />
<jsp:include page="/WEB-INF/views/options/search_options.jsp" />

</body>
</html>