create table code_school( --�����з�
	school_code number(3),
	school_name varchar2(20) not null unique,
	primary key(school_code)
);
create sequence code_school_seq start with 1 increment by 1;


create table code_area( -- ��������
	area_code number(3),
	area_name varchar2(20) not null unique,
	primary key(area_code)
);
create sequence code_area_seq start with 1 increment by 1;


create table code_favorite( -- ��ȣ�о�
	favorite_code number(3),
	favorite_name varchar2(20) not null unique,
	primary key(favorite_code)
);
create sequence code_favorite_seq start with 1 increment by 1;


create table code_able_area( -- �ٹ���������
	able_area_code number(3),
	able_area_name varchar2(20) not null unique,
	primary key(able_area_code)
);
create sequence code_able_area_seq start with 1 increment by 1;


create table code_certi( --�ڰ���
	certi_code number(3),
	certi_name varchar2(20) not null unique,
	primary key(certi_code)
);
create sequence code_certi_seq start with 1 increment by 1;


create table code_role( -- �İ߿���
	role_code number(3),
	role_name varchar2(20) not null unique,
	primary key(role_code)
);
create sequence code_role_seq start with 1 increment by 1;


create table code_own_skill( -- ������ų
	own_skill_code number(3),
	own_skill_name varchar2(20) not null unique,
	primary key(own_skill_code)
);
create sequence code_own_skill_seq start with 1 increment by 1;


create table code_job( -- ��������
	job_code number(3),
	job_name varchar2(20) not null unique,
	primary key(job_code)
);
create sequence code_job_seq start with 1 increment by 1;



create table code_handicap( -- ��������
	handicap_code number(3),
	handicap_name varchar2(20) not null unique,
	primary key(handicap_code)
);
create sequence code_handicap_seq start with 1 increment by 1;




create table freelancer( -- ��������
	fl_no number(3) not null,
	fl_name varchar2(20) not null,
	fl_gender varchar2(10) not null,
	fl_email varchar2(30) not null,
	fl_phone varchar2(20) not null,
	fl_phone_check varchar2(10),
	fl_birth date,
	school_code number(3),
	fl_graduate_day date not null,
	fl_consult_day date not null,
	job_code number(3),
	fl_send_day date not null,
	fl_send_day_checked varchar2(10),
	fl_notebook varchar2(10) not null,
	area_code number(3),
	fl_kind varchar2(10) not null,
	primary key(fl_no),
	foreign key(school_code) references code_school(school_code),
	foreign key(job_code) references code_job(job_code),
	foreign key(area_code) references code_area(area_code)
);
create sequence freelancer_seq start with 1 increment by 1;


create table fl_favorite_code( --��ȣ�о߻���ڵ�
	fl_favorite_code_no number(3) not null,
	fl_no number(3) not null,
	favorite_code number(3) not null,
	primary key(fl_favorite_code_no),
	foreign key(fl_no) references freelancer(fl_no),
	foreign key(favorite_code) references code_favorite(favorite_code)
);
create sequence fl_favorite_code_seq start with 1 increment by 1;


create table fl_able_area_code( -- ��ȣ��������ڵ�
	fl_able_area_code_no number(3) not null ,
	fl_no number(3) not null,
	able_area_code number(3) not null,
	primary key(fl_able_area_code_no),
	foreign key(fl_no) references freelancer(fl_no),
	foreign key(able_area_code) references code_able_area(able_area_code)
);
create sequence fl_able_area_code_seq start with 1 increment by 1;


create table fl_certi_code(
	fl_certi_code_no number(3) not null ,
	fl_no number(3) not null,
	certi_code number(3) not null,
	primary key(fl_certi_code_no),
	foreign key(fl_no) references freelancer(fl_no),
	foreign key(certi_code) references code_certi(certi_code)
);
create sequence fl_certi_code_seq start with 1 increment by 1;


create table fl_role_code( --�İ߿��һ���ڵ�
	fl_role_code_no number(3) not null ,
	fl_no number(3) not null,
	role_code number(3) not null,
	primary key(fl_role_code_no),
	foreign key(fl_no) references freelancer(fl_no),
	foreign key(role_code) references code_role(role_code)
);
create sequence fl_role_code_seq start with 1 increment by 1;


create table fl_own_skill_code( -- ������ų����ڵ�
	fl_own_skill_code_no number(3) not null ,
	fl_no number(3) not null,
	own_skill_code number(3) not null,
	primary key(fl_own_skill_code_no),
	foreign key(fl_no) references freelancer(fl_no),
	foreign key(own_skill_code) references code_own_skill(own_skill_code)
);
create sequence fl_own_skill_code_seq start with 1 increment by 1;


create table fl_handicap_code( --�������ڻ���ڵ�
	fl_handicap_code_no number(3) not null ,
	fl_no number(3) not null,
	handicap_code number(3) not null,
	primary key(fl_handicap_code_no),
	foreign key(fl_no) references freelancer(fl_no),
	foreign key(handicap_code) references code_handicap(handicap_code)
);
create sequence fl_handicap_code_seq start with 1 increment by 1;


create table fl_noti( --�߰�����
	fl_noti_no number(3) not null ,
	fl_no number(3),
	detail varchar2(1000),
	notice varchar2(1000),
	primary key(fl_noti_no),
	foreign key(fl_no) references freelancer(fl_no)
);
create sequence fl_noti_seq start with 1 increment by 1;


create table fl_carreer( --��»���
	fl_carreer_no number(3) not null ,
	fl_no number(3),
	carreer varchar2(30),
	checked_day date,
	primary key(fl_carreer_no),
	foreign key(fl_no) references freelancer(fl_no)
);
create sequence fl_carreer_seq start with 1 increment by 1;


create table develop_price( --���ߴܰ�
	develop_price_no number(3) not null ,
	fl_no number(3),
	d_min_price varchar2(30),
	d_max_price varchar2(30),
	d_fixed varchar2(10),
	d_nego varchar2(10),
	primary key(develop_price_no),
	foreign key(fl_no) references freelancer(fl_no)
);
create sequence develop_price_seq start with 1 increment by 1;


create table op_price( -- ��ܰ�
	op_price_no number(3) not null ,
	fl_no number(3),
	o_min_price varchar2(30),
	o_max_price varchar2(30),
	o_fixed varchar2(10),
	o_nego varchar2(10),
	primary key(op_price_no),
	foreign key(fl_no) references freelancer(fl_no)
);
create sequence op_price_seq start with 1 increment by 1;


alter table develop_price rename column min_price to d_min_price;
alter table develop_price rename column max_price to d_max_price;
alter table develop_price rename column fixed to d_fixed;
alter table develop_price rename column nego to d_nego;

alter table op_price rename column min_price to o_min_price;
alter table op_price rename column max_price to o_max_price;
alter table op_price rename column fixed to o_fixed;
alter table op_price rename column nego to o_nego;

alter table fl_carreer rename column carreer_day to checked_day;


alter table freelancer rename column fl_send_day_checked to fl_send_day_check;

select * from develop_price



