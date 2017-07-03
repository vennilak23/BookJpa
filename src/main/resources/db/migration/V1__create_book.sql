create table book 
(
id int auto_increment ,
title varchar(50) not null ,
author varchar(50) ,
publishdate DATE ,
content varchar(100) ,
price double(5,2),
status varchar(10) ,
quantity int(8),
constraint pk primary key(id) ,
constraint ck check(status in('draft' and'published'))
);


insert into book (id,title,author,publishdate,content,price,status) 
values (8514 ,'In Search of Lost Time','Marcel' ,str_to_date('11/06/2002','%d/%m/%Y') , 'War ' , 256.00 , 'draft');
insert into book (id,title,author,publishdate,content,price,status) 
values ( 9578,'Hamlet','Shakesspeare' ,str_to_date('25/08/1998','%d/%m/%Y') , 'Comics ' , 259.00 , 'published');
insert into book (id,title,author,publishdate,content,price,status) 
values (6581,'The Iliad','Homer' ,str_to_date('20/02/2001','%d/%m/%Y') , 'Dark world ' , 450.00 , 'published');
insert into book (id,title,author,publishdate,content,price,status) 
values (3575,'To the Lighthouse','Virginia' ,str_to_date('17/01/2012','%d/%m/%Y') , 'Entertainment' , 300.00 , 'draft');
