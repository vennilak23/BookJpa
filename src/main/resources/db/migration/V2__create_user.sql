create table user 
(id int (10) auto_increment,
name varchar (15) not null ,
username varchar(10) ,
 password varchar(10) ,
 mobileno numeric(10) , 
 emailid varchar(20),
  active  varchar(10) , 
  role varchar(10) , 
  constraint id_pk primary key(id), 
constraint active_ck check(active in ('A','I')));


insert into user(id , name , username, password, mobileno , emailid ,active , role )
values (01 , 'venilla' ,'ven','ven123', 58595841, 'venilla@gmail', 'A','admin' );