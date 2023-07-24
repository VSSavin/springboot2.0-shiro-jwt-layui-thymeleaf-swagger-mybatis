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

 create table IF NOT EXISTS sys_user_role(
  id varchar(50) primary key,
  user_id varchar(50) not null,
  role_id varchar(50) not null,
  create_time timestamp not null
  );

 create table IF NOT EXISTS sys_role_permission(
    id varchar(50) primary key,
    role_id varchar(50) not null,
    permission_id varchar(50) not null,
    create_time timestamp not null
 );

 create table IF NOT EXISTS sys_permission(
  id varchar(50) primary key,
  code varchar(50) not null,
  name varchar(100) not null,
  perms varchar(60) not null,
  url varchar(50) not null,
  method varchar(50) not null,
  pid varchar(50) not null,
  pid_name varchar(50) not null,
  order_num integer,
  type integer,
  status integer,
  create_time timestamp not null,
  update_time timestamp not null,
  deleted integer
  );

  create table IF NOT EXISTS sys_role(
      id varchar(50) primary key,
      name varchar(50) not null,
      description varchar(50) not null,
      status integer,
      create_time timestamp not null,
      update_time timestamp not null,
      deleted integer
   );

 insert into sys_user(id, username, salt, password, phone, dept_id, dept_name, real_name, nick_name, email, status,
  sex, deleted, create_id, update_id, create_where, create_time, update_time)
 values('1', 'admin', '123', 'e342efe0633ca0940a8e4805b047ff1c', '8-800', '000', 'dept_name', 'admin', 'admin', 'e@e.com',
  0, 0, 1, 'create_id', 'update_id', 0, '2005-01-01 00:00:00', '2009-01-01 00:00:00');

 insert into sys_user_role(id, user_id, role_id, create_time) values('1', '1', 'ADMIN', '2005-01-01 00:00:00');

 insert into sys_role_permission values('1', 'ADMIN', 'ADMIN', '2005-01-01 00:00:00');

 insert into sys_permission values('1', 'code', 'name', 'perms', 'url', 'method', 'pid', 'pid_name',
  0, 0, 0, '2005-01-01 00:00:00', '2009-01-01 00:00:00', 1);

 insert into sys_role values('1', 'name', 'description', 0, '2005-01-01 00:00:00', '2009-01-01 00:00:00', 1);