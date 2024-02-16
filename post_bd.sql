--------creacion bd--------

create database blog_db;

--------creacion de tablas---------

create table users(
	id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100)
);

create table posts(
	id serial primary key,
	creator_id int references users(id),
	title varchar(200),
	text varchar(500)
);

create table likes(
	id serial primary key,
	user_id int references users(id),
	post_id int references posts(id)
);

--------datos de las tablas---------

insert into users (first_name, last_name, email) values
('jimmy', 'sossa', 'jimmy@gmail.com'),
('mayerlis', 'herrera', 'mayerlis@gmail.com'),
('diego', 'añez', 'diego@gmail.com');

insert into posts (creator_id, title, text) values
(2, 'lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt, tellus quis egestas euismod, ipsum enim condimentum nisl, at sollicitudin risus libero id arcu. Maecenas pellentesque arcu sed blandit scelerisque.'),
(1, 'lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt, tellus quis egestas euismod, ipsum enim condimentum nisl, at sollicitudin risus libero id arcu. Maecenas pellentesque arcu sed blandit scelerisque.'),
(1, 'lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt, tellus quis egestas euismod, ipsum enim condimentum nisl, at sollicitudin risus libero id arcu. Maecenas pellentesque arcu sed blandit scelerisque.'),
(3, 'lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt, tellus quis egestas euismod, ipsum enim condimentum nisl, at sollicitudin risus libero id arcu. Maecenas pellentesque arcu sed blandit scelerisque.'),
(2, 'lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt, tellus quis egestas euismod, ipsum enim condimentum nisl, at sollicitudin risus libero id arcu. Maecenas pellentesque arcu sed blandit scelerisque.');

insert into likes (post_id, user_id) values
(1, 1),
(2, 1),
(3, 3),
(4, 2),
(5, 3);

--------select iner join--------

select * from posts inner join likes
on posts.id = likes.post_id inner join users
on likes.user_id = users.id;