CREATE TABLE orderitems
(
id int(10) PRIMARY KEY AUTO_INCREMENT,
orderid INT NOT NULL,
bookid INT NOT NULL,
quantity INT NOT NULL,
CONSTRAINT fk_ordersid FOREIGN KEY(orderid) REFERENCES orders(id),
CONSTRAINT fk_booksid FOREIGN KEY(bookid) REFERENCES book(id)
);
