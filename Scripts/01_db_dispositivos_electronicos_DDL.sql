
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

-- ======= TABLA COMPONENTES_DETALLES ===========

create table componentes_detalles(
	
id 	int primary key,
id_componente int not null,
hoja_de_datos varchar(3000)	not null, --link datasheet
longitud varchar(30),-- 69.0 mm
ancho varchar(30),-- 56.7 mm
peso varchar(30),-- 19.4 gramos
material varchar(50),-- silicio,acero, plastico, etc
voltaje_recomendado	varchar(30), -- 5 voltios
voltaje_min_entrada	varchar(30),-- 7  voltios (recomendado)
voltaje_max_entrada	varchar(30)-- 12  voltios (recomendado)

);

-- ======= Restricciones Tabla componentes_detalles ===========

-- UNIQUE ID_COMPONENTE
alter table componentes_detalles
add constraint UNIQUE_componentes_detalles_id_componente
unique (id_componente);


-- FK ID_COMPONENTE
alter table componentes_detalles 
add constraint FK_componentes_detalles_id_componente
foreign key(id_componente)
references componentes(id)
on delete cascade;


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======= TABLA TRANSISTORES_BIPOLARES ===========

create table transistores_bipolares(
	
id int primary key,
id_componente int not null,
tipo varchar(10) not null, -- NPN, PNP
--Desempeño
voltaje_colec_emis varchar(30), ---30V, 5.5V
voltaje_colec_base varchar(30), ---30V, 5.5V
voltaje_emis_base varchar(30), ---30V, 5.5V
voltaje_colec_emis_sat varchar(30), ---30V, 5.5V
corriente_colec varchar(30), ---1.5A
ganancia_hfe varchar(30), ---1.5A
--Caract. Térmicas			
disip_max varchar(30), ---0.645W
temp_juntura varchar(50)    ----55a+155 °C

);

-- ======= Restricciones Tabla transistores_bipolares ===========

-- UNIQUE ID_COMPONENTE
alter table transistores_bipolares
add constraint UNIQUE_transistores_bipolares_id_componente
unique (id_componente);


-- FK ID_COMPONENTE
alter table transistores_bipolares 
add constraint FK_transistores_bipolares_id_componente
foreign key(id_componente)
references componentes(id)
on delete cascade;


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======= TABLA TRANSISTORES_MOSFET ===========

create table transistores_mosfet(
	
id int primary key,
id_componente int not null,
tipo varchar(10) not null, -- nMos, pMos
--Espec Máximas
voltaje_drenaje_fuente varchar(30), ---40v
corriente_cc_drenaje   varchar(30), ---0.15A
--Caract. Térmicas			
disip_max varchar(30), ---0.35W
temp_op_max varchar(50), ----150 °C
--Caract. Eléctricas
conduct_drenaje_sustrato varchar(50), ---14 pF 
resist_drenaje_fuente varchar(50)---30 Ohm

);

-- ======= Restricciones Tabla transistores_mosfet ===========

-- UNIQUE ID_COMPONENTE 
alter table transistores_mosfet
add constraint UNIQUE_transistores_mosfet_id_componente
unique (id_componente);

-- FK ID_COMPONENTE
alter table transistores_mosfet
add constraint FK_transistores_mosfet_id_componente
foreign key(id_componente)
references componentes(id)
on delete cascade;


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======= TABLA CAPACITORES_ELECTROLITICOS ===========

create table capacitores_electroliticos(
	
id int primary key,
id_componente int not null,
tipo varchar(30) not null, -- plomo axial, plomo radial, etc
--Espec 
capacitancia varchar(30), ---10000 uF
tolerancia varchar(30), --- +/- 20%
--Caract. Térmicas			
rango_temperatura varchar(50), --- -55 °C to +105 °C
--Caract. Eléctricas
rango_tension_nominal varchar(50)--- 10 V to 100 V

);

-- ======= Restricciones Tabla capacitores_electroliticos ===========

-- UNIQUE ID_COMPONENTE 
alter table capacitores_electroliticos
add constraint UNIQUE_capacitores_electroliticos_id_componente
unique (id_componente);

-- FK ID_COMPONENTE
alter table capacitores_electroliticos
add constraint CHECK_capacitores_electroliticos_id_componente
foreign key(id_componente)
references componentes(id)
on delete cascade;


