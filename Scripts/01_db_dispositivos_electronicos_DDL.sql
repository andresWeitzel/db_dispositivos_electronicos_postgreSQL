
/* -----------------------------------------
 * ------ DISPOSITIVOS ELECTRÓNICOS ---------
 * -----------------------------------------
 * 
 * 
 * ========= DDL =============
 */

--Tables
drop table if exists componentes cascade;
drop table if exists componentes_detalles cascade;
drop table if exists transistores_bipolares cascade;
drop table if exists transistores_mosfet cascade;
drop table if exists capacitores_electroliticos cascade;
drop table if exists resistores_alta_frecuencia cascade;
drop table if exists microcontroladores_risc_pics cascade;
drop table if exists microcontroladores_risc_avrs cascade;
drop table if exists placas_arduinos cascade;
drop table if exists placas_esp8266 cascade;
drop table if exists placas_esp32 cascade;


--Sequences
drop sequence if exists id_seq_comp cascade;
drop sequence if exists id_seq_comp_det cascade;
drop sequence if exists id_seq_trans_bip cascade;
drop sequence if exists id_seq_trans_mosf cascade;
drop sequence if exists id_seq_cap_elect cascade;
drop sequence if exists id_seq_resis_alt_frec cascade;
drop sequence if exists id_seq_micr_risc_pics cascade;
drop sequence if exists id_seq_micr_risc_avrs cascade;
drop sequence if exists id_seq_plac_arduinos cascade;
drop sequence if exists id_seq_plac_esp8266 cascade;
drop sequence if exists id_seq_plac_esp32 cascade;



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======= TABLA COMPONENTES ===========
create table componentes(

id int primary key,
codigo varchar(100) not null, -- ej: mh-r-447y8
imagen varchar(1000), -- link de la imagen
nro_pieza varchar(200) not null, -- ej: KSH13005
categoria varchar(100) not null, -- ej: sensor, circuito integrado, transistor,etc
descripcion varchar(100) not null, -- ej:transistor bjt npn
fabricante varchar(100) not null, -- ej: SHANTOU HUASHAN, generico
stock int not null, -- ej: 100, 200, etc
precio decimal(8,2) not null -- ej: 5.55 dolares 
);



-- ======= Restricciones Tabla componentes ===========

-- UNIQUE CODIGO
alter table componentes
add constraint UNIQUE_componentes_codigo
unique (codigo);


-- CHECK STOCK
alter table componentes
add constraint CHECK_componentes_stock
check (stock >= 0 );


-- CHECK PRECIO
alter table componentes
add constraint CHECK_componentes_precio
check (precio > 0 );


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

