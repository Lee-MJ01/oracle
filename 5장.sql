-- 실습하기 3-2
select * from user_indexes;

select * from user_ind_columns;

-- 실습하기 3-3
create index idx_user1_id on USER1(ID);
select * from user_ind_columns;

create view VW_user2 as (select name, hp, age from user2);
create view vw_user2_age_under30 as (select * from user2 where age < 30);

select * from vw_user2_age_under30;

drop view vw_user2;
drop view vw_user2_age_under30;

create view vw_emp as (select name, gender, job,depno, regdate from emp);


-- 실습하기 3-9
create table user6 (
    seq number primary key,
    name varchar2(20),
    gender char(1),
    age number,
    addr varchar2(255)
);

-- 실습하기 3-10
create SEQUENCE seq_user6 INCREMENT by 1 start with 1;


-- 실습하기 3-11
insert into user6 values (seq_user6.nextval, '김유신', 'm', 25, '김해시');
insert into user6 values (seq_user6.nextval, '김춘추', 'm', 23, '경주시');
insert into user6 values (seq_user6.nextval, '신사임당', 'w', 27, '강릉시');


-- 실습하기 4-1
// 오라클에서 내부 스크립트 실행이나 일반 사용자 생성을 가능하게 하기 위한 세션 설정
alter session set "_oracle_script"=true; 
create user test1 identified by 1234;

-- 실습하기 4-2
select * from all_users;

-- 실습하기 4-3
alter user test1 identified by 1111;

-- 실습하기 4-4
grant connect, resource to test1;
grant unlimited tablespace to test1;

grant connect, resource, unlimited tablespace to test1;






















