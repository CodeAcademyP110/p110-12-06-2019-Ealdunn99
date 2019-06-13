--create table books(
--	ISBN  int primary key identity,
--	Name nvarchar(50),
--	Price decimal(18, 2),
--	cover nvarchar(50) DEFAULT 'sekil' ,
--)
--create table Authors (
--	Id int primary key identity,
--	Fullname nvarchar(100) not null,
--	Lastname nvarchar(50),
--	Email nvarchar(50) unique  DEFAULT 'Emailtest'
--)
--create table booktoAuthor(
--	Id int primary key identity,
--	AuthorId int references Authors(Id),
--	booksISBN int references books(ISBN)
--)
--insert into books values('book5',45,'rty'),
--( 'book2',67,'rty'), ( 'book3',91,'rty'), ('book4',27,'rty')
--insert into Authors values
--('Authorname1','AuthorLastname5','fgah'), 
--( 'Authorname2','AuthorLastname2','fyui'),
--( 'Authorname3','AuthorLastname3','shjk'),
--('Authorname4','AuthorLastname4','sddf')



--select  books.Name,Authors.Fullname from books
-- join Authors on Authors.Id = books.ISBN

select * from booktoAuthor
--select books.Name,Authors.Fullname from booktoAuthor
FULL OUTER JOIN books on booktoAuthor.booksISBN = books.ISBN
FULL OUTER JOIN Authors on booktoAuthor.AuthorId = Authors.Id
