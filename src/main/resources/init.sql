create table IF NOT EXISTS sys_user(
 id varchar(50) primary key,
 username varchar(50) not null,
 salt varchar(100) not null,
 password varchar(60) not null,
 phone varchar(50) not null,
 dept_id varchar(50) not null,
 dept_name varchar(50) not null,
 real_name varchar(50) not null,
 nick_name varchar(50) not null,
 email varchar(50) not null,
 status integer,
 sex integer,
 deleted integer,
 create_id varchar(50) not null,
 update_id varchar(50) not null,
 create_where integer,
 create_time timestamp not null,
 update_time timestamp not null
 );

 insert into sys_user(id, username, salt, password, phone, dept_id, dept_name, real_name, nick_name, email, status,
  sex, deleted, create_id, update_id, create_where, create_time, update_time)
 values('1', 'admin', '123', 'e342efe0633ca0940a8e4805b047ff1c', '8-800', '000', 'dept_name', 'admin', 'admin', 'e@e.com',
  0, 0, 1, 'create_id', 'update_id', 0, '2005-01-01 00:00:00', '2009-01-01 00:00:00');