/* -----------------------------------------
 * ------ DISPOSITIVOS ELECTRÃ“NICOS ---------
 * -----------------------------------------
 * 
 * 
 * ========= DML UPDATES =============
 */


-- =====================================
-- ======= TABLA COMPONENTES ===========
-- =====================================


select * from componentes;
select * from componentes_detalles;
select * from information_schema.columns where table_name='componentes';

-- Actualizamos los codigos segun el ID
update componentes set codigo = 'HDGHFK-KSH13006' where id = 1;
update componentes set nro_pieza = 'KSH13006' where id = 1;

-- Actualizamos el stock para transistores segÃºn hoja de datos
update componentes as comp set stock = 450
from componentes_detalles as comp_det where 
(comp.categoria = 'Transistores BJT' 
and comp.id = comp_det.id_componente
and comp_det.hoja_de_datos = 'https://alltransistors.com/adv/pdfdatasheet_inchange_semiconductor/3cd010g.pdf');

-- Actualizamos el precio para capacitores segÃºn hoja de datos y fabricante
update componentes as comp set precio = 12
from componentes_detalles as comp_det where 
(comp.categoria = 'Capacitores Electroliticos' 
and comp.id = comp_det.id_componente
and comp_det.hoja_de_datos = 'https://ar.mouser.com/c/ds/passive-components/capacitors/aluminum-electrolytic-capacitors/aluminum-electrolytic-capacitors-screw-terminal/'
and comp.fabricante = 'RUBYCON');

-- Actualizamos nombre de fabricante
update componentes  set fabricante = replace(fabricante, 'Renesas Electronics' , 'RENESAS ELECTRONICS');



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------


-- ==============================================
-- ======= TABLA COMPONENTES_DETALLES ===========
-- ==============================================

select * from componentes;
select * from componentes_detalles;
select * from information_schema.columns where table_name='componentes_detalles';

select * from componentes_detalles as comp_det 
inner join componentes as comp
on comp_det.id_componente  = comp.id
where categoria = 'Resistores de Alta Frecuencia'; 


-- Actualizamos longitud, ancho y peso para resistores de alta frecuencia
update componentes_detalles as comp_det set longitud = '19.5mm', ancho='12.3mm', peso = '0.18 g'
from componentes as comp
where (comp_det.id_componente = comp.id 
and comp.categoria = 'Resistores de Alta Frecuencia'
and comp_det.hoja_de_datos = 'https://www.vishay.com/docs/61038/mif.pdf');


select * from componentes_detalles as comp_det 
inner join componentes as comp
on comp_det.id_componente  = comp.id
where categoria = 'Placas Arduino' and nro_pieza='UTT-ARDUINO-NANO';


-- Actualizamos material y voltajes para placas arduino segÃºn nro de pieza
update componentes_detalles as comp_det set material = 'Aluminio aleaciÃ³n'
, voltaje_recomendado='3 - 3.3 vdc', voltaje_min_entrada = '3 vdc'
, voltaje_max_entrada = '3.3 vdc'
from componentes as comp
where comp_det.id_componente  = comp.id 
and categoria = 'Placas Arduino' and nro_pieza='UTT-ARDUINO-NANO';

-- Reemplazamos el caracter 'a' por el  '-' del campo VOLTAJE_RECOMENDADO
update componentes_detalles set voltaje_recomendado = replace(voltaje_recomendado, 'a' , '-');

-- Reemplazamos vdc por VDC
update componentes_detalles set voltaje_recomendado = replace(voltaje_recomendado, 'vdc' , 'VDC');
update componentes_detalles set voltaje_min_entrada = replace(voltaje_min_entrada, 'vdc' , 'VDC');
update componentes_detalles set voltaje_max_entrada = replace(voltaje_max_entrada, 'vdc' , 'VDC');



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------


-- ==============================================
-- ======= TABLA TRANSISTORES_BIPOLARES==========
-- ==============================================

select * from componentes;
select * from componentes_detalles;
select * from transistores_bipolares;
select * from information_schema.columns where table_name='transistores_bipolares';


select * from transistores_bipolares as trans_bip 
inner join componentes_detalles as comp_det
on trans_bip.id_componente = comp_det.id_componente
inner join componentes as comp
on comp_det.id_componente = comp.id
where comp.categoria = 'Transistores BJT' 
and comp_det.hoja_de_datos = 'https://category.alldatasheet.com/index.jsp?components=TRANSISTOR'
and trans_bip.tipo = 'NPN';

-- Actualizamos voltajes segun tipo de transistor
update transistores_bipolares as trans_bip
set voltaje_colec_emis = '-120 VDC', voltaje_colec_base = '-230 VDC'
, voltaje_emis_base = '-3.2 VDC', voltaje_colec_emis_sat = '-2.5 VDC'
from componentes as comp
inner join componentes_detalles as comp_det
on comp.id = comp_det.id_componente
where (comp.categoria = 'Transistores BJT' 
and comp_det.hoja_de_datos = 'https://category.alldatasheet.com/index.jsp?components=TRANSISTOR'
and trans_bip.tipo = 'NPN');

-- Obtenemos hoja de datos segun id_componente
select hoja_de_datos from componentes_detalles where id=5; 

-- Actualizamos corrientes y ganancias segun hoja de datos, tipo e id_componente
update transistores_bipolares as trans_bip
set corriente_colec  = '1.86 A', ganancia_hfe  = '110'
from componentes as comp
inner join componentes_detalles as comp_det
on comp.id = comp_det.id_componente
where (comp.categoria = 'Transistores BJT' 
and comp_det.hoja_de_datos = 'https://www.alldatasheet.com/datasheet-pdf/pdf/907361/ROHM/DTA143EMFHA.html'
and trans_bip.tipo = 'NPN'
and trans_bip.id_componente = 5);

-- Actualizamos disip_max y temp_juntura segun id_componente
update transistores_bipolares as trans_bip
set disip_max  = '15 W', temp_juntura  = '186° C'
from componentes as comp
inner join componentes_detalles as comp_det
on comp.id = comp_det.id_componente
where (trans_bip.id_componente = 2);


select * from transistores_bipolares;



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------


-- =============================================
-- ======= TABLA TRANSISTORES_MOSFET ===========
-- =============================================

select * from componentes;
select * from componentes_detalles;
select * from transistores_mosfet;
select * from information_schema.columns where table_name='transistores_mosfet';



-- Actualizar todas las especificaciones según id_componente y tipo
update transistores_mosfet as trans_mosf
set corriente_cc_drenaje = '10.4 A'
, disip_max = '35 W'
, temp_op_max = '170 °C'
, conduct_drenaje_sustrato = '95 (118) pF'
, resist_drenaje_fuente = '0.178 (0.142) Ohm'
from componentes as comp
inner join componentes_detalles as comp_det
on comp.id = comp_det.id_componente
where (trans_mosf.id_componente = 9 and tipo = 'pMOS');


-- Actualizar todas las especificaciones según id_componente y tipo
update transistores_mosfet as trans_mosf
set voltaje_drenaje_fuente = '120 VDC'
,corriente_cc_drenaje = '22.2 A'
, disip_max = '55 W'
, temp_op_max = '250 °C'
, conduct_drenaje_sustrato = '120 (135) pF'
, resist_drenaje_fuente = '1.872 (1.242) Ohm'
from componentes as comp
inner join componentes_detalles as comp_det
on comp.id = comp_det.id_componente
where (trans_mosf.id_componente = 10 and tipo = 'nMOS');


select * from transistores_mosfet;



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------


-- ====================================================
-- ======= TABLA CAPACITORES_ELECTROLITICOS ===========
-- ====================================================

select * from componentes;
select * from componentes_detalles;
select * from capacitores_electroliticos;
select * from information_schema.columns where table_name='capacitores_electroliticos';
