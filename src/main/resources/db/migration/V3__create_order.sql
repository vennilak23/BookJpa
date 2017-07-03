CREATE TABLE orders
(
 id INT(8) PRIMARY KEY AUTO_INCREMENT,
 userid INT(8),
 totalprice double(7,2) NOT NULL DEFAULT 0,
 ordereddate TIMESTAMP DEFAULT NOW(),
 modifieddate TIMESTAMP DEFAULT NOW(),
 cancelleddate DATE,
 delivereddate DATE,
 STATUS VARCHAR(50) DEFAULT 'ORDERED' ,
 reason VARCHAR(100) ,
 CONSTRAINT fk_usersid FOREIGN KEY(userid) REFERENCES user(id)
 );
