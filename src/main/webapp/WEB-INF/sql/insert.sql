

insert into code_school values(code_school_seq.nextval, '고졸');
insert into code_school values(code_school_seq.nextval, '전문대졸');
insert into code_school values(code_school_seq.nextval, '일반대학사졸');
insert into code_school values(code_school_seq.nextval, '일반대석사졸');
insert into code_school values(code_school_seq.nextval, '일반대박사졸');


insert into code_area values(code_area_seq.nextval, '서울특별시');
insert into code_area values(code_area_seq.nextval, '인천광역시');
insert into code_area values(code_area_seq.nextval, '부산광역시');
insert into code_area values(code_area_seq.nextval, '대구광역시');
insert into code_area values(code_area_seq.nextval, '대전광역시');
insert into code_area values(code_area_seq.nextval, '광주광역시');
insert into code_area values(code_area_seq.nextval, '울산광역시');
insert into code_area values(code_area_seq.nextval, '경기도');
insert into code_area values(code_area_seq.nextval, '강원도');


insert into code_favorite values(code_favorite_seq.nextval, '교육');
insert into code_favorite values(code_favorite_seq.nextval, '대부');
insert into code_favorite values(code_favorite_seq.nextval, '대학');
insert into code_favorite values(code_favorite_seq.nextval, '보험');
insert into code_favorite values(code_favorite_seq.nextval, '쇼핑');
insert into code_favorite values(code_favorite_seq.nextval, '언론');
insert into code_favorite values(code_favorite_seq.nextval, '유통');
insert into code_favorite values(code_favorite_seq.nextval, '은행');
insert into code_favorite values(code_favorite_seq.nextval, '의료');
insert into code_favorite values(code_favorite_seq.nextval, '전자/전기');
insert into code_favorite values(code_favorite_seq.nextval, '정부기관');
insert into code_favorite values(code_favorite_seq.nextval, '증권');
insert into code_favorite values(code_favorite_seq.nextval, '카드');
insert into code_favorite values(code_favorite_seq.nextval, '통신');
insert into code_favorite values(code_favorite_seq.nextval, '기타');

update code_favorite set favorite_code=favorite_code-1 where favorite_code is not null;


insert into code_able_area values(code_able_area_seq.nextval, '서울');
insert into code_able_area values(code_able_area_seq.nextval, '인천');
insert into code_able_area values(code_able_area_seq.nextval, '경기');
insert into code_able_area values(code_able_area_seq.nextval, '강원');
insert into code_able_area values(code_able_area_seq.nextval, '충북');
insert into code_able_area values(code_able_area_seq.nextval, '충남');
insert into code_able_area values(code_able_area_seq.nextval, '전북');
insert into code_able_area values(code_able_area_seq.nextval, '전남');
insert into code_able_area values(code_able_area_seq.nextval, '경북');
insert into code_able_area values(code_able_area_seq.nextval, '경남');
insert into code_able_area values(code_able_area_seq.nextval, '제주');
insert into code_able_area values(code_able_area_seq.nextval, '국외');

update code_able_area set able_area_code=able_area_code-1 where able_area_code is not null;



insert into code_certi values(code_certi_seq.nextval, '정보처리기사');
insert into code_certi values(code_certi_seq.nextval, '정보처리산업기사');

update code_certi set certi_code=certi_code-1 where certi_code is not null;


insert into code_role values(code_role_seq.nextval, '개발');
insert into code_role values(code_role_seq.nextval, '운영');
insert into code_role values(code_role_seq.nextval, '분석설계');
insert into code_role values(code_role_seq.nextval, 'PL');
insert into code_role values(code_role_seq.nextval, 'PM');
insert into code_role values(code_role_seq.nextval, '웹디');
insert into code_role values(code_role_seq.nextval, 'publisher');
insert into code_role values(code_role_seq.nextval, '기타');

update code_role set role_code=role_code-1 where role_code is not null;


insert into code_own_skill values(code_own_skill_seq.nextval, 'JAVA/JSP');
insert into code_own_skill values(code_own_skill_seq.nextval, 'Oracle');
insert into code_own_skill values(code_own_skill_seq.nextval, 'Spring');
insert into code_own_skill values(code_own_skill_seq.nextval, '.NET');
insert into code_own_skill values(code_own_skill_seq.nextval, 'PHP');
insert into code_own_skill values(code_own_skill_seq.nextval, 'ASP');
insert into code_own_skill values(code_own_skill_seq.nextval, 'ABAP');
insert into code_own_skill values(code_own_skill_seq.nextval, 'Delphi');
insert into code_own_skill values(code_own_skill_seq.nextval, 'PB');
insert into code_own_skill values(code_own_skill_seq.nextval, 'VC++');
insert into code_own_skill values(code_own_skill_seq.nextval, '웹디');
insert into code_own_skill values(code_own_skill_seq.nextval, '기타');

update code_own_skill set own_skill_code=own_skill_code-1 where own_skill_code is not null;



insert into code_handicap values(code_handicap_seq.nextval, '실력부족');
insert into code_handicap values(code_handicap_seq.nextval, '파견지부적응');
insert into code_handicap values(code_handicap_seq.nextval, '근태불성실');
insert into code_handicap values(code_handicap_seq.nextval, '무단이탈');
insert into code_handicap values(code_handicap_seq.nextval, '전화통화원치않음');
insert into code_handicap values(code_handicap_seq.nextval, '전화번호틀림');
insert into code_handicap values(code_handicap_seq.nextval, '기타');

update code_handicap set handicap_code=handicap_code-1 where handicap_code is not null;



insert into code_job values(code_job_seq.nextval, '프리랜서개발자');
insert into code_job values(code_job_seq.nextval, '정규직개발자');
insert into code_job values(code_job_seq.nextval, '기타작업');

update code_job set job_code=job_code-1 where job_code is not null;
-----------------------------------------
alter table freelancer modify(fl_consult_day varchar(20));
alter table freelancer modify(fl_graduate_day varchar(20));
alter table freelancer modify(fl_send_day varchar(20));
alter table fl_carreer modify(checked_day varchar(20));
-----------------------------------------
select * from FL_CARREER
delete from FL_CARREER
insert into FL_CARREER values(fl_carreer_seq.nextval, 13, '01-0','2016-08-13');


		select * from code_area order by area_code 
		select * from code_school order by school_code 
select * from fl_handicap_code
select * from freelancer
select * from fl_certi_code
select * from FL_OWN_SKILL_CODE
delete from FL_OWN_SKILL_CODE where fl_no=6
delete from freelancer where fl_no=9
delete from fl_carreer where fl_no=6

insert into freelancer 
			values(freelancer_seq.nextval, '배건희', '여자', 'danmi765@naver.com', '010-2108-1509', 'n', '1991',
					3, '2013-03-03', '2016-08-13-07-32', 1, '2018-01-01', 'y',
					'n', 2, 'w');
					
insert into fl_carreer values(fl_carreer_seq.nextval, 4, '1/0','2016-08-13');

insert into FL_OWN_SKILL_CODE values(fl_own_skill_code_seq.nextval,4,3);
insert into FL_OWN_SKILL_CODE values(fl_own_skill_code_seq.nextval,4,4);

insert into FL_ROLE_CODE values(FL_ROLE_CODE_seq.nextval, 4, 1);

insert into DEVELOP_PRICE values(DEVELOP_PRICE_seq.nextval, 4, '200','250','n','n');
insert into op_PRICE values(op_PRICE_seq.nextval, 4, '150','200','n','n');
					
insert into FL_ABLE_AREA_CODE values(FL_ABLE_AREA_CODE_seq.nextval, 4, 1);
insert into FL_ABLE_AREA_CODE values(FL_ABLE_AREA_CODE_seq.nextval, 4, 2);
insert into FL_ABLE_AREA_CODE values(FL_ABLE_AREA_CODE_seq.nextval, 4, 3);

insert into FL_FAVORITE_CODE values(FL_FAVORITE_CODE_seq.nextval, 4, 2);
insert into FL_FAVORITE_CODE values(FL_FAVORITE_CODE_seq.nextval, 4, 3);
insert into FL_FAVORITE_CODE values(FL_FAVORITE_CODE_seq.nextval, 4, 4);

insert into FL_NOTI values(FL_NOTI_seq.nextval, 4, '없음','없음');

insert into FL_CERTI_CODE values(FL_CERTI_CODE_seq.nextval, 16, 1);
insert into FL_CERTI_CODE values(FL_CERTI_CODE_seq.nextval, 16, 2);
insert into FL_CERTI_CODE values(FL_CERTI_CODE_seq.nextval, 16, 3);
					
delete from fl_certi_code where fl_no=16






select totcount, rownum sno, staff_no, staff_name, jumin_no, school_name, religion_name, graduate_day , skill_name, religion_code 
	from (
			select count(*) over() totcount, ss.staff_no, staff_name, jumin_no, school_name, religion_name, graduate_day , skill_name, ss.religion_code, sk.skill_code
			
				from (select s.staff_no, s.staff_name, s.jumin_no as all_jumin, substr(s.jumin_no,8,1) jumin_no, s.school_code, s.religion_code sr, s.graduate_day, sc.school_code scs, sc.school_name, r.religion_code, r.religion_name  
							from staff s, code_school sc, code_religion r 
								where s.school_code=sc.school_code and s.religion_code=r.religion_code ) ss,
								
					(select ss.staff_no ,substr(xmlagg ( xmlelement(X,',',cs.skill_name) order by ss.staff_no).extract ('//text()'),2  ) as skill_name,
							substr(xmlagg ( xmlelement(X,',',cs.skill_code) order by ss.staff_no).extract ('//text()'),2  ) as skill_code 
						from staff_skill ss, code_skill cs 
							where ss.skill_code=cs.skill_code 
								group by staff_no)sk
								
					where ss.staff_no = sk.staff_no 
					
					)
					
					
select * from freelancer where fl_no=13

--------------------------substr(xmlagg ( xmlelement(X,',',cs.skill_name) order by ss.staff_no).extract ('//text()'),2  )



select * from fl_carreer where fl_no=13

select * from develop_price where fl_no=13

select * from op_price where fl_no=13


select * from fl_handicap_code where fl_no=13

select fl_no, substr(xmlagg ( xmlelement(X,',',handicap_code) order by handicap_code).extract ('//text()'),2  ) as handicap_code 
	from fl_handicap_code where fl_no=13 group by fl_no

	

select * from fl_own_skill_code where fl_no=13

select fl_no, substr(xmlagg ( xmlelement(X,',',own_skill_code) order by own_skill_code).extract ('//text()'),2  ) as own_skill_code 
	from fl_own_skill_code where fl_no=13 group by fl_no
	
	
	
select * from fl_role_code where fl_no=13

select fl_no, substr(xmlagg ( xmlelement(X,',',role_code) order by role_code).extract ('//text()'),2  ) as role_code 
	from fl_role_code where fl_no=13 group by fl_no
	
	

select * from fl_certi_code where fl_no=13

select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
	from fl_certi_code where fl_no=13 group by fl_no
	
	

select * from fl_favorite_code where fl_no=13

select fl_no, substr(xmlagg ( xmlelement(X,',',favorite_code) order by favorite_code).extract ('//text()'),2  ) as favorite_code 
	from fl_favorite_code where fl_no=14 group by fl_no
	
	
	------------------------
	
select f.*, dp.d_min_price, dp.d_max_price, dp.d_fixed, dp.d_nego ,op.o_min_price, op.o_max_price, op.o_fixed, op.o_nego , fv.favorite_code,
		cc.certi_code, r.role_code, os.own_skill_code, fn.detail, fn.notice , fca.carreer , fca.checked_day , aa.able_area_code 
		
--,hc.handicap_code

	from freelancer f, develop_price dp, op_price op, fl_noti fn, fl_carreer fca,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',favorite_code) order by favorite_code).extract ('//text()'),2  ) as favorite_code 
			from fl_favorite_code group by fl_no) fv,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
			from fl_certi_code group by fl_no) cc,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',role_code) order by role_code).extract ('//text()'),2  ) as role_code 
			from fl_role_code group by fl_no) r	,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',own_skill_code) order by own_skill_code).extract ('//text()'),2  ) as own_skill_code 
			from fl_own_skill_code group by fl_no) os,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',able_area_code) order by able_area_code).extract ('//text()'),2  ) as able_area_code 
				from fl_able_area_code group by fl_no) aa 
			
--,(select fl_no, substr(xmlagg ( xmlelement(X,',',handicap_code) order by handicap_code).extract ('//text()'),2  ) as handicap_code 
--from fl_handicap_code group by fl_no) hc	
	
		where 
		
			and f.fl_no = dp.fl_no and f.fl_no = op.fl_no and fv.fl_no = f.fl_no and cc.fl_no = f.fl_no
			and f.fl_no = r.fl_no and f.fl_no = os.fl_no and f.fl_no = fn.fl_no and fca.fl_no = f.fl_no
			and f.fl_no = aa.fl_no 
			
			
			and f.fl_kind='b'
--and f.fl_no = hc.fl_no
			
					
			
			
			
			
			
			
			
			
			
			
			
select f.*, fv.favorite_code, cc.certi_code, r.role_code, os.own_skill_code, fca.carreer 

	from freelancer f, fl_carreer fca,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',favorite_code) order by favorite_code).extract ('//text()'),2  ) as favorite_code 
			from fl_favorite_code group by fl_no) fv,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
			from fl_certi_code group by fl_no) cc,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',role_code) order by role_code).extract ('//text()'),2  ) as role_code 
			from fl_role_code group by fl_no) r	,
		(select fl_no, substr(xmlagg ( xmlelement(X,',',own_skill_code) order by own_skill_code).extract ('//text()'),2  ) as own_skill_code
			from fl_own_skill_code group by fl_no) os
			
	where f.fl_no = fca.fl_no and f.fl_no = fv.fl_no and f.fl_no=cc.fl_no and f.fl_no=r.fl_no and f.fl_no=os.fl_no
	
	and f.fl_kind='b'
--	and f.fl_gender='여자'
--	and f.school_code = 1
--	and f.fl_send_day between '2016-08-13' and '2016-09-02'
--	and f.fl_send_day_checked = 'n'
--	and substr(fca.carreer,0,1) between 0 and 2
	and os.own_skill_code =1
	
	
-----------------------	
		
select rownum num, s.* from				
	(	select count(*) over() totcount, f.*, fv.favorite_code, cc.certi_code, r.role_code, r.role_name, os.own_skill_code, os.own_skill_name, fca.carreer , fv.favorite_name 
		
			from freelancer f, fl_carreer fca,
			
				(select ffc.fl_no, substr(xmlagg ( xmlelement(X,',',ffc.favorite_code) order by ffc.favorite_code).extract ('//text()'),2  ) as favorite_code ,
						 substr(xmlagg ( xmlelement(X,',',ccf.favorite_name) order by ccf.favorite_name).extract ('//text()'),2  ) as favorite_name 
					from fl_favorite_code ffc, code_favorite ccf ,
						(select distinct fl_no cfc_fl_no from fl_favorite_code 
				--			where favorite_code in(2,3) 
								) cfc
						where ffc.favorite_code = ccf.favorite_code and ffc.fl_no = cfc.cfc_fl_no
							group by fl_no) fv,
						
				(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
					from fl_certi_code group by fl_no) cc,
					
				(select fr.fl_no, 
				substr(xmlagg ( xmlelement(X,',',fr.role_code) order by fr.role_code).extract ('//text()'),2  ) as role_code,
				substr(xmlagg ( xmlelement(X,',',cr.role_name) order by cr.role_name).extract ('//text()'),2  ) as role_name
					from fl_role_code fr, code_role cr ,
						(select distinct fl_no ff_fl_no 
							from FL_ROLE_CODE 
								--where role_code in(3,4)
									) ff
						where fr.fl_no = ff.ff_fl_no and fr.role_code = cr.role_code
						group by fl_no) r	,
						
				(select fl_no os_fl_no, substr(xmlagg ( xmlelement(X,',',fsk.own_skill_code) order by fsk.own_skill_code).extract ('//text()'),2  ) as own_skill_code,
						substr(xmlagg ( xmlelement(X,',',cos.own_skill_name) order by cos.own_skill_name).extract ('//text()'),2  ) as own_skill_name
					from fl_own_skill_code fsk, code_own_skill cos ,
						(select distinct fl_no as dd_fl_no 
							from fl_own_skill_code 
								--where own_skill_code in(3)
								) dd
						where fsk.own_skill_code = cos.own_skill_code  and fsk.fl_no = dd.dd_fl_no 
							group by fl_no) os 
					
			where f.fl_no = fca.fl_no and f.fl_no = fv.fl_no and f.fl_no=cc.fl_no and f.fl_no=r.fl_no and f.fl_no=os.os_fl_no
			
		--	and f.fl_kind='b'
		--	and f.fl_gender='여자'
		--	and f.school_code = 1
		--	and f.fl_send_day between '2016-08-13' and '2016-09-02'
		--	and f.fl_send_day_checked = 'n'
		--	and substr(fca.carreer,0,1) between 0 and 2
		--	and cc.certi_code =1
		--	and f.fl_graduate_day between '1967' and '2011'
		--	and f.job_code = 3
		--	and substr(f.fl_consult_day,0,10) between '2016-08-13' and '2016-08-13'
		--	and f.fl_birth between '1967' and '1967'
		
				order by fl_name desc
			) s
	
---------------------------------------	-
	select ffc.fl_no, substr(xmlagg ( xmlelement(X,',',ffc.favorite_code) order by ffc.favorite_code).extract ('//text()'),2  ) as favorite_code ,
				 substr(xmlagg ( xmlelement(X,',',ccf.favorite_name) order by ccf.favorite_name).extract ('//text()'),2  ) as favorite_name 
			from fl_favorite_code ffc, code_favorite ccf ,
				(select distinct fl_no cfc_fl_no from fl_favorite_code where favorite_code in(2,3) ) cfc
				where ffc.favorite_code = ccf.favorite_code and ffc.fl_no = cfc.cfc_fl_no
					group by fl_no
				
				
				
---------------------------------------	-
	select fr.fl_no, 
		substr(xmlagg ( xmlelement(X,',',fr.role_code) order by fr.role_code).extract ('//text()'),2  ) as role_code,
		substr(xmlagg ( xmlelement(X,',',cr.role_name) order by cr.role_name).extract ('//text()'),2  ) as role_name
			from fl_role_code fr, code_role cr ,
				(select distinct fl_no ff_fl_no from FL_ROLE_CODE where role_code in(3,4)) ff
				where fr.fl_no = ff.ff_fl_no and fr.role_code = cr.role_code
				group by fl_no			
			
			
			
			
			
			
			
-----------------------------	
	select fl_no, substr(xmlagg ( xmlelement(X,',',fsk.own_skill_code) order by fsk.own_skill_code).extract ('//text()'),2  ) as own_skill_code,
				substr(xmlagg ( xmlelement(X,',',cos.own_skill_name) order by cos.own_skill_name).extract ('//text()'),2  ) as own_skill_code
			from fl_own_skill_code fsk, code_own_skill cos ,
				(select distinct fl_no as dd_fl_no from fl_own_skill_code where own_skill_code in(1,2)) dd
				where fsk.own_skill_code = cos.own_skill_code  and fsk.fl_no = dd.dd_fl_no 
					group by fl_no

					
					
					
					
					
					
					------------------------------------------
					
					select rownum num,  s.* from				
	(	select count(*) over() totcount,f.*, fv.favorite_code, r.role_code,r.role_name, os.own_skill_code, os.own_skill_name, fca.carreer , fv.favorite_name
										--, cc.certi_code
										,hc.handicap_code
										,sch.school_name
		
			from freelancer f, fl_carreer fca,
				
				(select ffc.fl_no, substr(xmlagg ( xmlelement(X,',',ffc.favorite_code) order by ffc.favorite_code).extract ('//text()'),2  ) as favorite_code ,
							 substr(xmlagg ( xmlelement(X,',',ccf.favorite_name) order by ccf.favorite_name).extract ('//text()'),2  ) as favorite_name 
						from fl_favorite_code ffc, code_favorite ccf ,
							(select distinct fl_no cfc_fl_no from fl_favorite_code 
								) cfc
							where ffc.favorite_code = ccf.favorite_code and ffc.fl_no = cfc.cfc_fl_no
								group by fl_no) fv,
						
--				(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
--					from fl_certi_code group by fl_no) cc,
					
				(select fr.fl_no, 
				substr(xmlagg ( xmlelement(X,',',fr.role_code) order by fr.role_code).extract ('//text()'),2  ) as role_code,
				substr(xmlagg ( xmlelement(X,',',cr.role_name) order by cr.role_name).extract ('//text()'),2  ) as role_name
					from fl_role_code fr, code_role cr ,
						(select distinct fl_no ff_fl_no 
							from FL_ROLE_CODE 
									) ff
						where fr.fl_no = ff.ff_fl_no and fr.role_code = cr.role_code
						group by fl_no) r	,
						
				(select fl_no os_fl_no, substr(xmlagg ( xmlelement(X,',',fsk.own_skill_code) order by fsk.own_skill_code).extract ('//text()'),2  ) as own_skill_code,
						substr(xmlagg ( xmlelement(X,',',cos.own_skill_name) order by cos.own_skill_name).extract ('//text()'),2  ) as own_skill_name
					from fl_own_skill_code fsk, code_own_skill cos ,
						(select distinct fl_no as dd_fl_no 
							from fl_own_skill_code 
								) dd
						where fsk.own_skill_code = cos.own_skill_code  and fsk.fl_no = dd.dd_fl_no 
							group by fl_no) os,
							
				(select fl_no, substr(xmlagg ( xmlelement(X,',',handicap_code) order by handicap_code).extract ('//text()'),2  ) as handicap_code 
					from fl_handicap_code where handicap_code in(4) group by fl_no) hc	,
					
					(select * from code_school) sch
					
			where f.fl_no = fca.fl_no and f.fl_no = fv.fl_no and f.fl_no=r.fl_no and f.fl_no=os.os_fl_no
					-- and f.fl_no=cc.fl_no 
					and f.fl_no = hc.fl_no
					and f.school_code = sch.school_code
		) s
		
		
		
		
		
		
		
		
		
		
		
		
		-------------------
		
		select f.* , sch.school_name from freelancer f , (select * from code_school) sch where f.school_code = sch.school_code
		
		select fr.fl_no, 
				substr(xmlagg ( xmlelement(X,',',fr.role_code) order by fr.role_code).extract ('//text()'),2  ) as role_code,
				substr(xmlagg ( xmlelement(X,',',cr.role_name) order by cr.role_name).extract ('//text()'),2  ) as role_name
					from fl_role_code fr, code_role cr ,
						(select distinct fl_no ff_fl_no 
							from FL_ROLE_CODE ) ff
						where fr.fl_no = ff.ff_fl_no and fr.role_code = cr.role_code
						group by fl_no
		
		
		(select fl_no, substr(xmlagg ( xmlelement(X,',',hhc.handicap_code) order by hhc.handicap_code).extract ('//text()'),2  ) as handicap_code ,
					substr(xmlagg ( xmlelement(X,',',cch.handicap_name) order by cch.handicap_name).extract ('//text()'),2  ) as handicap_name 
			from fl_handicap_code hhc, code_handicap cch,
				(select distinct fl_no chc_fl_no from fl_handicap_code where handicap_code in(3,4)) chc
				where hhc.fl_no = chc.chc_fl_no and hhc.handicap_code = cch.handicap_code 
					group by fl_no) hc	
	
		
		
		
		select * from freelancer
		
		
		
		select * from
		(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
					from fl_certi_code group by fl_no) join dual on certi_code = 'Y'
					
					
					
					
					
					
					
					-----------------------------------------
	select rownum num, s.* from				
	(	select count(*) over() totcount, f.*, fv.favorite_code, r.role_code,r.role_name, os.own_skill_code, os.own_skill_name, fca.carreer , fv.favorite_name, sch.school_name, fca.checked_day 
--				 ,cc.certi_code
				
				

			from freelancer f, fl_carreer fca,
				
				(select ffc.fl_no, substr(xmlagg ( xmlelement(X,',',ffc.favorite_code) order by ffc.favorite_code).extract ('//text()'),2  ) as favorite_code ,
							 substr(xmlagg ( xmlelement(X,',',ccf.favorite_name) order by ccf.favorite_name).extract ('//text()'),2  ) as favorite_name 
						from fl_favorite_code ffc, code_favorite ccf ,
							(select distinct fl_no cfc_fl_no from fl_favorite_code 
--								where favorite_code in(2,3)
												) cfc
							where ffc.favorite_code = ccf.favorite_code and ffc.fl_no = cfc.cfc_fl_no
								group by fl_no) fv,
						
--			(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
--					from fl_certi_code group by fl_no) cc,
					
				(select fr.fl_no, 
				substr(xmlagg ( xmlelement(X,',',fr.role_code) order by fr.role_code).extract ('//text()'),2  ) as role_code,
				substr(xmlagg ( xmlelement(X,',',cr.role_name) order by cr.role_name).extract ('//text()'),2  ) as role_name
					from fl_role_code fr, code_role cr ,
						(select distinct fl_no ff_fl_no 
							from FL_ROLE_CODE 
--								where role_code in(1,2)
									) ff
						where fr.fl_no = ff.ff_fl_no and fr.role_code = cr.role_code
						group by fl_no) r	,
						
				(select fl_no os_fl_no, substr(xmlagg ( xmlelement(X,',',fsk.own_skill_code) order by fsk.own_skill_code).extract ('//text()'),2  ) as own_skill_code,
						substr(xmlagg ( xmlelement(X,',',cos.own_skill_name) order by cos.own_skill_name).extract ('//text()'),2  ) as own_skill_name
					from fl_own_skill_code fsk, code_own_skill cos ,
						(select distinct fl_no as dd_fl_no 
							from fl_own_skill_code 
--								where own_skill_code in(1,2)
								) dd
						where fsk.own_skill_code = cos.own_skill_code  and fsk.fl_no = dd.dd_fl_no 
							group by fl_no) os,
				
				(select * from code_school) sch
					
					
			where f.fl_no = fca.fl_no 
				and f.fl_no = fv.fl_no 
				and f.fl_no=r.fl_no 
				and f.fl_no=os.os_fl_no
				and f.school_code = sch.school_code
--				and f.fl_no=cc.fl_no 
--			
--			and f.fl_kind='b'
--			<if test="fl_gender != null">		and f.fl_gender='여자'</if>
--			<if test="school_code != null">		and f.school_code = 2</if>
--			<if test="fl_send_day_check != null">		and f.fl_send_day_check = 'y'</if>
--			<if test="certi_code != null">		and cc.certi_code =1</if>
--			<if test="job_code != null">		and f.job_code = 1</if>
--			
--			<if test="s_year != ''">		and f.fl_graduate_day between '1967' and '2016'</if>
--				and substr(fca.carreer,0,1) between 0 and 1
--				and f.fl_send_day between '2002-01-01' and '2016-08-13'

			and (substr(f.fl_consult_day,0,10) > '2002-01-01' and substr(f.fl_consult_day,0,10) < '2016-08-10')

--			<if test="fl_birth != ''">		and f.fl_birth between '1967' and '1997'</if>

--			and fca.checked_day between '2016-08-10' and '2016-08-13'

--			and f.fl_no = 27

--			and (
--				( f.fl_name like '%배%' or
--					f.fl_email like '%배%' or
--					f.fl_phone like '%배%' or
--					sch.school_name like '%배%' or
--					f.fl_birth like '%배%' or
--					f.fl_gender like '%배%' or
--					os.own_skill_name like '%배%' or
--					fv.favorite_name like '%배%' or
--					r.role_name like '%배%'
--					
--				)
--					
--							or 
--							
--				( f.fl_name like '%배%' or
--					f.fl_email like '%배%' or
--					f.fl_phone like '%배%' or
--					sch.school_name like '%배%' or
--					f.fl_birth like '%배%' or
--					f.fl_gender like '%배%' or
--					os.own_skill_name like '%배%' or
--					fv.favorite_name like '%배%' or
--					r.role_name like '%배%'
--				)
--			)
				
		) s
		order by fl_send_day desc
		
		
		
		
		
		
		
		delete from fl_carreer;
		delete from fl_noti;
		delete from develop_price;
		delete from op_price;
		delete from fl_handicap_code;
		delete from fl_own_skill_code;
		delete from fl_role_code;
		delete from fl_certi_code;
		delete from fl_able_area_code;
		delete from fl_favorite_code;
		delete from freelancer where fl_no = 31;
		
		----------------
		select * from freelancer where fl_no =50;
		
update fl_carreer set carreer = '1-0' where fl_no = 13
		
		select * from fl_carreer where substr(carreer,0,1) between '0' and '0'
		select substr(carreer,0,1) from fl_carreer
		
		
		select * from freelancer where fl_birth between '1987' and '1997'
		
		
		
		---------------------------------
		
select f.*, dp.d_min_price, dp.d_max_price, dp.d_fixed, dp.d_nego ,op.o_min_price, op.o_max_price, op.o_fixed, op.o_nego , fv.favorite_code,
				cc.certi_code, r.role_code, os.own_skill_code, fn.notice , fn.detail , fca.carreer , fca.checked_day , aa.able_area_code 
				,hc.handicap_code

			from freelancer f, develop_price dp, op_price op, fl_noti fn, fl_carreer fca,
				(select fl_no, substr(xmlagg ( xmlelement(X,',',favorite_code) order by favorite_code).extract ('//text()'),2  ) as favorite_code 
					from fl_favorite_code group by fl_no) fv,
				(select fl_no, substr(xmlagg ( xmlelement(X,',',certi_code) order by certi_code).extract ('//text()'),2  ) as certi_code 
					from fl_certi_code group by fl_no) cc,
				(select fl_no, substr(xmlagg ( xmlelement(X,',',role_code) order by role_code).extract ('//text()'),2  ) as role_code 
					from fl_role_code group by fl_no) r	,
				(select fl_no, substr(xmlagg ( xmlelement(X,',',own_skill_code) order by own_skill_code).extract ('//text()'),2  ) as own_skill_code 
					from fl_own_skill_code group by fl_no) os,
				(select fl_no, substr(xmlagg ( xmlelement(X,',',able_area_code) order by able_area_code).extract ('//text()'),2  ) as able_area_code 
						from fl_able_area_code group by fl_no) aa 
					
				,(select fl_no, substr(xmlagg ( xmlelement(X,',',handicap_code) order by handicap_code).extract ('//text()'),2  ) as handicap_code 
					from fl_handicap_code group by fl_no) hc	
			
			
					where f.fl_no = 27
				
						and f.fl_no = dp.fl_no and f.fl_no = op.fl_no and fv.fl_no = f.fl_no and cc.fl_no = f.fl_no
						and f.fl_no = r.fl_no and f.fl_no = os.fl_no and f.fl_no = fn.fl_no and fca.fl_no = f.fl_no
						and f.fl_no = aa.fl_no 
						
						and f.fl_no = hc.fl_no
						
						
						
						
						
						
						
						
						
						
						
						-------------------------------
						
SELECT name, userid, joindate, active

	FROM (SELECT CEIL(ROWNUM / 10) AS page, name, userid, joindate, active 
		FROM (SELECT name, userid, joindate, active 
				FROM MEMBER_T ORDER BY joindate DESC) T 
		WHERE ROWNUM <= #{page} * 10) T 
		
WHERE page = #{page}






