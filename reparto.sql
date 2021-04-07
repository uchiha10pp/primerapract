SELECT * FROM reparto.camionero;


/* a) Realice una consulta que permita visualizar los nombres de los camioneros y las características de los vehículos que conducen. adjunte la consulta en la respuesta*/

select c.nombre, concat(modelo, tipo, potencia) as caracteristicas
from camionero as c
join conduce as co on co.rfc_camionero = c.rfc
join camiones as ca on co.placa_camiones = ca.placa;


/* b) Realice una consulta que permita visualizar las ciudades que visito un camionero dado el idcamionero. adjunte la consulta en la respuesta*/

select c.rfc, ci.nombre
from camionero as c
join paquetes as p on c.rfc = p.rfc_camionero
join ciudad as ci on ci.apartado = p.apartado_ciudad
where c.rfc = 2;

/* c) Realice una consulta que muestre que paquetes lleva cada camionero. adjunte la consulta en la respuesta*/

select nombre, descripcion
from camionero as c
join paquetes as p on c.rfc = p.rfc_camionero;

/* Cree una vista para las consultas a,b y c. . adjunte la consulta en la respuesta*/
#a
create view vw_a as
select c.nombre, concat(modelo, tipo, potencia) as caracteristicas
from camionero as c
join conduce as co on co.rfc_camionero = c.rfc
join camiones as ca on co.placa_camiones = ca.placa;

select * from vw_a;


#b
create view vw_b as
select c.rfc, ci.nombre
from camionero as c
join paquetes as p on c.rfc = p.rfc_camionero
join ciudad as ci on ci.apartado = p.apartado_ciudad
where c.rfc = 2;
select * from vw_b;


#c
create view vw_c as
select nombre, descripcion
from camionero as c
join paquetes as p on c.rfc = p.rfc_camionero;
select * from vw_b;





