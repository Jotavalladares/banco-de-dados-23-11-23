create database redesocial;
show databases;
use redesocial;

create table usuarios(
id_usuario int unique primary key auto_increment,
nome varchar(255) not null,
data_nasc date not null);

create table postagens(
id_post int unique primary key auto_increment,
texto_postagens text not null,
user_id int not null,
constraint usuarios_postagem foreign key(id_usuario) references usuario(id));

create table comentario( 
id_comentario int unique primary key auto_increment,
texto_comentario text not null,
user_id int not null,
user_id int not null,
constraint usuario_comentario  foreign key(id_usuario) references usuario(id),
constraint postagens_comentario  foreign key(id_post) references post(id)),

create table amizades(
id_amizades int unique primary key auto_increment,
user_id int not null,
user_id int not null,
constraint  amizade1 usuarios_amizades foreign key(id_usuario) references usuario(id),
constraint  amizade2 usuarios_amizades foreign key(id_usuario) references usuario(id));
data_conex datetime not null);

create table curtidas(
id_curtidas int primary key auto_increment,
data_curtidas date not null,
user_id int not null,
user_id int not null,
constraint usuarios_curtidas foreign key(id_usuario) references usuario(id),
constraint postagens_curtidas foreign key(id_post) references post(id),
data_curt datetime not null);

create table grupo(
id_grupo int primary key auto_increment,
nome varchar(255) not null,
descricao text not null);

create table membrosgrupo(
id_menbro int primary key auto_increment,
data_adesao date not null,
user_id int not null,
user_id int not null,
constraint usuarios_membrosgrupo foreign key(id_usuario) references usuario(id),
constraint grupo_mebrosgrupo foreign key(id_grupo) references grupo(id));

