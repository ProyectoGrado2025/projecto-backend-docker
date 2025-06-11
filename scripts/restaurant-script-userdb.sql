-- -----------------------------------------------------
-- LIMPIA ANTES DE VOLVER A CREAR LA BD
-- -----------------------------------------------------
drop schema if exists `restaurantV1`;
create schema if not exists `restaurantV1` default character set utf8 ;
show warnings;

-- -----------------------------------------------------
-- BORRA EL USUARIO Y SUS PRIVILEGIOS ANTES DE CREARLO
-- -----------------------------------------------------
use restaurantV1;
drop user if exists 'restaurantV1'@'127.0.0.1';
create user 'restaurantV1'@'127.0.0.1' identified by 'restaurantV1';
grant all on restaurantV1.* to 'restaurantV1'@'127.0.0.1';
show grants for 'restaurantV1'@'127.0.0.1';