--29강 제약조건

--not null
drop table test_table1;
create table test_table1(
    data1 number,
    data2 number not null
);

insert into test_table1(data1, data2)
values (100, 101);

select * from test_table1;

--insert into test_table1(data1)
--values (102);

insert into test_table1(data2)
values (102);

select * from test_table1;

--unique
--null은 중복되어도 상관 없음
drop table test_table2;
create table test_table2(
    data1 number,
    data2 number constraint TEST_TABLE2_DATA2_UK unique
);

insert into test_table2(data1, data2)
values (100, 101);

select * from test_table2;

--insert into test_table2(data1, data2)
--values (100, 101);

insert into test_table2(data1, data2)
values (100, 102);

insert into test_table2
values(null, null);

insert into test_table2
values(null, null);

select * from test_table2;

--primary key : not null and unique
drop table test_table3;
create table test_table3(
    data1 number,
    data2 number constraint TEST_TABLE3_DATA2_PK primary key
);

insert into test_table3(data1, data2)
values (100, 101);

--insert into test_table3(data1, data2)
--values (100, 101);

insert into test_table3(data1, data2)
values (100, 102);

--insert into test_table3
--values(null, null);

select * from test_table3;

--foreign key : primary key를 참조한다
--없으면 null로 저장할 수 있음
--중복 가능
drop table test_table4;
drop table test_table5;

create table test_table4(
    data1 number constraint TEST_TABLE4_PK primary key,
    data2 number not null
);

insert into test_table4
values(100, 101);

insert into test_table4
values(200, 201);

select * from test_table4;

create table test_table5(
    data3 number not null,
    data4 number constraint TEST_TABLE5_DATA4_FK
                 references test_table4(data1)
);

insert into test_table5
values(1, 100);

insert into test_table5
values(2, 100);

insert into test_table5
values(3, 200);

insert into test_table5
values(4, 200);

insert into test_table5
values(5, null);

--insert into test_table5
--values(5, 300);

select * from test_table5;

--check
drop table test_table6;
create table test_table6(
    data1 number constraint TEST_TABLE6_DATA1_CK
                 check (data1 between 1 and 10),
    data2 number constraint TEST_TABLE6_DATA2_CK
                 check (data2 in (10, 20, 30))
);

insert into test_table6
values (1, 10);

insert into test_table6
values (1, 20);

insert into test_table6
values (2, 30);

--insert into test_table6
--values (11, 10);

--insert into test_table6
--values (3, 40);

select * from test_table6;