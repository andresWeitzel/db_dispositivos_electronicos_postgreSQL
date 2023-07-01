/* -----------------------------------------
 * ------ DISPOSITIVOS ELECTRÓNICOS ---------
 * -----------------------------------------
 * 
 * 
 * ========= DML INSERT =============
 */

-- Delete records
delete from componentes cascade ;
delete from componentes_detalles cascade;
delete from transistores_bipolares cascade;
delete from transistores_mosfet cascade;
delete from capacitores_electroliticos cascade;
delete from resistores_alta_frecuencia cascade;
delete from microcontroladores_especif cascade ;
delete from microcontroladores_risc_pics cascade ;
delete from microcontroladores_risc_avrs cascade ;
delete from placas_arduinos cascade;
delete from placas_esp8266 cascade;
delete from placas_esp32 cascade;


-- Restart sequences
alter sequence id_seq_comp restart;
alter sequence id_seq_comp_det restart;
alter sequence id_seq_trans_bip restart;
alter sequence id_seq_cap_elect restart;
alter sequence id_seq_resis_alt_frec restart;
alter sequence id_seq_micr_especif restart;
alter sequence id_seq_micr_risc_pics restart;
alter sequence id_seq_micr_risc_avrs restart;
alter sequence id_seq_plac_arduinos restart;
alter sequence id_seq_plac_esp8266 restart;
alter sequence id_seq_plac_esp32 restart;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------


-- ======= TABLA COMPONENTES ===========
select * from componentes;
select * from information_schema.columns where table_name='componentes';

-- ============================ INSERTS TRANSISTORES BJT ===================================================
insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('HDGHFK-KSH13005' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/01_transNpnShantouHuashan.jpg' 
,'KSH13005' , 'Transistores BJT' , 'Transistor BJT NPN', 'SHANTOU HUASHAN', 300, 2.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('DFHSDK-3CD010G' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/02_transPnpInchangeSemiConduc.jpg' 
,'3CD010G' , 'Transistores BJT' , 'Transistor BJT PNP', 'INCHANGE SEMICONDUCTOR', 400, 5.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('JSHDLO-112JK8' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/03_transNpnCentralSemiConduc.webp' 
,'112JK8' , 'Transistores BJT' , 'Transistor BJT NPN', 'CENTRAL SEMICONDUCTOR', 200, 10.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('KSJSDK-3CD005H' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/04_transPnpCentralSemiConduc.jpg' 
,'3CD005H' , 'Transistores BJT' , 'Transistor BJT PNP', 'CENTRAL SEMICONDUCTOR', 320, 6.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('JSKSHDD-10QQKAA' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/05_transNpnSTMicroelectronics.webp' 
,'10QQKAA' , 'Transistores BJT' , 'Transistor BJT NPN', 'STMicroelectronics', 212, 4.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('KALDSHY-222AASA' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/06_transPnpInchangeSemiConduc02.webp' 
,'222AASA' , 'Transistores BJT' , 'Transistor BJT PNP', 'INCHANGE SEMICONDUCTOR', 120, 3.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('JAKYQQW-918SPAA' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/07_transNpnRenesasElectr.jpg' 
,'918SPAA' , 'Transistores BJT' , 'Transistor BJT NPN', 'Renesas Electronics', 100, 9.0
);

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
('KSUTEYU-9A0SNS' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresBjt/08_transPnpRenesasElectr.webp' 
,'9A0SNS' , 'Transistores BJT' , 'Transistor BJT PNP', 'RENESAS ELECTRONIC', 310, 8.0
);
