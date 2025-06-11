-- -----------------------------------------------------
-- LIMPIA ANTES DE VOLVER A CREAR LA BD
-- -----------------------------------------------------
drop schema if exists `usersv1`;
create schema if not exists `usersv1` default character set utf8 ;
show warnings;

-- -----------------------------------------------------
-- BORRA EL USUARIO Y SUS PRIVILEGIOS ANTES DE CREARLO
-- -----------------------------------------------------
use usersv1;
drop user if exists 'usersv1'@'127.0.0.1';
create user 'usersv1'@'127.0.0.1' identified by 'usersv1';
grant all on usersv1.* to 'usersv1'@'127.0.0.1';
show grants for 'usersv1'@'127.0.0.1';