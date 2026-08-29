create table book(bookid int,title varchar2(100),author varchar2(30),price decimal(10,2),publishYear int)

alter table book add PublicationYear int

alter table book modify price decimal(10,2)

insert all
into book values(1,'Harry Potter','JK Rowling',1200,1985,1990)
into book values(2,'Harry Potter','JK Rowling',1200,1985,1990)
into book values(3,'Harry Potter','JK Rowling',1200,1985,1990)
into book values(123,'Harry Potter','JK Rowling',1200,1985,1990)
into book values(456,'Harry Potter','JK Rowling',1200,1985,1990)
select * from dual

update book set price = 500 where bookid=123

delete from book where bookid=456
select * from book
select title from book;
select price from book
select title,author,PublicationYear from book
select title,price from book

alter table book rename column author to BookAuthor

alter table book drop column PublicationYear 

truncate table book