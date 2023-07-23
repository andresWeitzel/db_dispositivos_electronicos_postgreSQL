/* -----------------------------------------
 * ------ DISPOSITIVOS ELECTRÓNICOS ---------
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

-- Actualizamos el stock para transistores según hoja de datos
update componentes as comp set stock = 450
from componentes_detalles as comp_det where 
(comp.categoria = 'Transistores BJT' 
and comp.id = comp_det.id_componente
and comp_det.hoja_de_datos = 'https://alltransistors.com/adv/pdfdatasheet_inchange_semiconductor/3cd010g.pdf');

-- Actualizamos el precio para capacitores según hoja de datos y fabricante
update componentes as comp set precio = 12
from componentes_detalles as comp_det where 
(comp.categoria = 'Capacitores Electroliticos' 
and comp.id = comp_det.id_componente
and comp_det.hoja_de_datos = 'https://ar.mouser.com/c/ds/passive-components/capacitors/aluminum-electrolytic-capacitors/aluminum-electrolytic-capacitors-screw-terminal/'
and comp.fabricante = 'RUBYCON');


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
