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

-- ----- INSERTS TRANSISTORES BJT ------
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





-- ----- INSERTS TRANSISTORES MOSFET ------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('JDHFYT-AP4519GED' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresMosfet/01_transNpAdvancedPower.webp'
 ,'AP4519GED' , 'Transistores MOSFET' , 'Transistor Mosfet NP' , 'Advanced Power' , 200 ,4.0
 );
 
 
 insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('HJDGHF-SL60N06' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/transistoresMosfet/02_transNSlkor.webp'
 ,'SL60N06' , 'Transistores MOSFET' , 'Transistor Mosfet N' , 'Slkor' , 50 , 7.0
 );
 



-- ----- INSERTS CAPACITORES ELECTROLITICOS ------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('009-KLDIUAOASS','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/01_capElectrAlumRadialVishay.webp' 
 , 'KLDIUAOASS' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Radial' , 'VISHAY', 20 , 1);
 
  insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('3097-JKSJHSBS6DVBDG','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/02_capElectrAlumAxialVishay.webp' 
 , 'BS6DVBDG' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Axial' , 'VISHAY', 18 , 1.6);
 
   insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('KLSIO9-A0EOSAA','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/03_Capacitor%20Electrolitico%20de%20Polimero%20Organico%20panasonic.jpg' 
 , 'A0EOSAA' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Polimero Organico' , 'PANASONIC', 50 , 2);
 
 
   insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('LSÑK871-JSKU99','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/04_Capacitor%20Electrolitico%20de%20Aluminio%20Encaje%20a%20Presi%C3%B3n%20hitachi.webp' 
 , 'JSKU99' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Encaje a Presión' , 'HITACHI', 67 , 3);
 
   insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('JSUKOW987-029IOKKL','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/05_Capacitor%20Electrolitico%20de%20Aluminio%20Terminal%20Roscado%20elna.webp' 
 , '029IOKKL' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Terminal Roscado' , 'ELNA', 34 , 5);
 
   insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('LAKSHJ7-0SOJD7DD','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/06_Capacitor%20Electrolitico%20de%20Aluminio%20Axial%20suncon.webp' 
 , '0SOJD7DD' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Axial' , 'SUNCON', 22 , 2.5);
 
   insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('KSLPO0AH7-JS8SJ9KA','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/07_Capacitor%20Electrolitico%20de%20Aluminio%20Radial%20hitachi.jpg' 
 , 'JS8SJ9KA' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Radial' , 'HITACHI', 11 , 2.6);
 
   insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('ISUYTY89-0A0SHHHS','https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/capacitoresElectr/08_Capacitor%20Electrolitico%20de%20Aluminio%20Terminal%20Roscado%20rubycon.webp' 
 , '0A0SHHHS' , 'Capacitores Electroliticos' , 'Capacitor Electrolitico de Aluminio Terminal Roscado' , 'RUBYCON', 32 , 2.5);
 


-- ----- INSERTS RESISTORES ALTA FRECUENCIA ------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('594-MIF2500BFKMGNHT5' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/resisAltaFrec/01_Resistores%20de%20alta%20frecuencia%20RF%2025ohms%201%25%20100ppm%20vishay.webp' 
 , 'FKMGNHT5' , 'Resistores de Alta Frecuencia' , 'Resistores de alta frecuencia RF 25ohms 1% 100ppm' 
 , 'VISHAY' , 800 , 5);

 insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('581-CS12010T0100GTR' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/resisAltaFrec/02_Resistores%20de%20alta%20frecuencia%20RF%20100ohms%202%25%2010W%20kyshocera.webp' 
 , 'T0100GTR' , 'Resistores de Alta Frecuencia' , 'Resistores de alta frecuencia RF 100ohms 2% 10W' 
 , 'KYSHOCERA' , 1200 , 3);
 



-- ----- INSERTS MICROCONTROLADORES_RISC_PICS ------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('HSFGDTTEE-KY0-PIC18F4520-I/PT' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/microsRiscPics/01_Microcontrolador%20PIC18F4520-IPT%20microcrip.webp' 
 , 'KY0-PIC18F4520-I/PT' , 'Microcontroladores PICS' , 'Microcontrolador PIC18F4520-I/PT' , 'Microchip' , 40 , 20 );

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('HJDYETU-KY32-PIC-00130-001' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/microsRiscPics/02_Microcontrolador%20PIC-00130-001%20t-winds.webp' 
 , 'KY32-PIC-00130-001' , 'Microcontroladores PICS' , 'Microcontrolador PIC-00130-001' , 'T-Wins' , 34 , 30 );
 



-- ----- INSERTS MICROCONTROLADORES_RISC_AVRS ------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('ATMEGA32-16AURTR-ND' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/microsRiscAvrs/01_Microcontrolador%20AVR%20ATMEGA32-16AURmicrochip.webp' 
 , '16AURTR-ND' , 'Microcontroladores AVRS' , 'Microcontrolador AVR ATMEGA32-16AUR' , 'Microchip Technology' , 10 , 30 );
 

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('ATMEGA328P-MUR-JKSHJ67' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/microsRiscAvrs/02_Microcontrolador%20AVR%20ATMEGA328P-MUR%20microchip.jpg' 
 , 'MUR-JKSHJ67' , 'Microcontroladores AVRS' , 'Microcontrolador AVR ATMEGA328P-MUR' , 'Microchip Technology' , 15 , 25 );
 
    


-- ----- INSERTS PLACAS_ARDUINO ------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('KSHJETA-ARDUINO-UNO' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/placasArduino/01_Placa%20Arduino%20Uno%20R3.webp' 
 , 'ETA-ARDUINO-UNO' , 'Placas Arduino' , 'Placa Arduino Uno R3' , 'Arduino' , 30 , 10 );

 
insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('JSHYUTT-ARDUINO-NANO' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/placasArduino/02_Placa%20Arduino%20Nano%20V3.0.webp' 
 , 'UTT-ARDUINO-NANO' , 'Placas Arduino' , 'Placa Arduino Nano V3.0' , 'Arduino' , 40 , 8 );




-- ----- INSERTS PLACAS_ESP8266------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('2471S0A-ESP8266' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/placasEsp8266/01_Placa%20Esp8266%20EX.webp' 
 , '0A-ESP8266' , 'Placas Esp8266' , 'Placa Esp8266 EX' , 'Espressif Systems' , 10 , 10 );

 
insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('JD76FG6-DOIT-WEMOS-Mini' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/placasEsp8266/02_Placa%20Wemos%20D1%20Mini.webp' 
 , 'DOIT-WEMOS-Mini' , 'Placas Esp8266' , 'Placa Wemos D1 Mini' , 'Wemos' , 12 , 8 );
 



-- ----- INSERTS PLACAS_ESP32------

insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('HJSHKWROOM-ESP32' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/placasEsp32/01_Placa%20Esp32%20WROOM%2032ue.webp' 
 , 'WROOM-ESP32' , 'Placas Esp32' , 'Placa Esp32 WROOM 32ue' , 'Espressif Systems' , 5 , 20 );


 -- https://www.mouser.com/datasheet/2/891/esp-wroom-32_datasheet_en-1223836.pdf
insert into componentes(codigo , imagen , nro_pieza , categoria , descripcion , fabricante , stock , precio) values
 ('H789DHJUi-ESP32' , 'https://raw.githubusercontent.com/andresWeitzel/db_microelectronica_Oracle/master/files/placasEsp32/02_Placa%20ESP32%20WROOM.webp' 
 , 'DHJUi-ESP32i' , 'Placas Esp32' , 'Placa ESP32 WROOM' , 'Espressif Systems' , 5 , 15  );
