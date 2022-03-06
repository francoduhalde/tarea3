create database quimica_cem2;
use quimica_cem2;
create table productos(
id_producto int unsigned not null auto_increment,
nombre_producto varchar(60),
detalle_producto varchar(60),
cantidad_producto int unsigned not null,
precio_producto int unsigned not null,
primary key(id_producto)
);

create table clientes(
id_cliente int unsigned not null auto_increment ,
dni_cliente int unsigned not null,
nombre_cliente varchar(60),
apellido_cliente varchar(60),
primary key(id_cliente)
);

create table ventas(
id_venta int unsigned not null auto_increment,
id_cliente int unsigned not null,
id_producto int unsigned not null,
id_sucursal int unsigned not null,
cantidad_compra int unsigned not null,
precio_compra int unsigned not null,
primary key(id_venta),
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_producto) references productos(id_producto),
foreign key(id_sucursal) references sucursales(id_sucursal)
);

create table sucursales(
id_sucursal int unsigned not null auto_increment,
nombre_sucursal varchar(60),
Direccion_sucursal int unsigned not null,
primary key(id_sucursal)
) ;

insert into productos values(null,"cloro","en pastilla",35000,500);
insert into productos values(null,"detergente","liquido",35000,500);
insert into productos values(null,"escobas","completas",35000,500);
insert into productos values(null,"lavandina","por litro",35000,500);
insert into productos values(null,"limpiapisos","por litro",35000,500);

insert into clientes values(null,41997158,"franco","duhalde");
insert into clientes values(null,42343452,"jose","duhalde");
insert into clientes values(null,42121232,"juan","duhalde");
insert into clientes values(null,4213234,"carlos","duhalde");
insert into clientes values(null,4215652,"fulanito","duhalde");

insert into sucursales values(null,"pilar","victor vergani, 860");
insert into sucursales values(null,"del viso","km46");
insert into sucursales values(null,"derqui","pte.peron 460");

insert into ventas values(null,1,2,1);
insert into ventas values(null,2,4,1);
insert into ventas values(null,2,1,2);
insert into ventas values(null,3,1,3);
insert into ventas values(null,4,1,1);


