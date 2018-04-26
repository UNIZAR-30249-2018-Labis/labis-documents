CREATE TABLE IF NOT EXISTS tb_edificios (
	id_edificio text,
	edificio text,
  direccion text,
  campus integer,
	PRIMARY KEY (id_edificio)
);

CREATE TABLE IF NOT EXISTS tb_iluminacion_art (
	iluminacion_art text,
	id integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_codigos_de_campus (
	id integer,
	id_campus text,
  campus text,
  ciudad integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_estructura_uso_crue (
	nmro_estructura_uso_crue integer,
	estructura_uso_crue text,
	PRIMARY KEY (nmro_estructura_uso_crue)
);

CREATE TABLE IF NOT EXISTS tb_espacios (
	id_espacio text,
  id_edificio text,
  id_utc text,
  id_centro text,
  id_cc integer,
  id_sorolla integer,
  tipo_de_uso integer,
  largo decimal,
  ancho decimal,
  diagonal decimal,
  superficie decimal,
  altura_maxima decimal,
  altura_media decimal,
  volumen decimal,
  falso_techo integer,
  nmro_ventanas integer,
  persianas_ext integer,
  orientacion_pral integer,
  iluminacion_art integer,
  nmro_puntos_luz integer,
  nmro_puntos_agua integer,
  nmro_puntos_gas integer,
  vitrinas_riesgo_biologico integer,
  vitrinas_riesgo_quimico integer,
  nmro_vitrinas_rb integer,
  nmro_vitrinas_rq integer,
  ptos_extraccion_localizada integer,
  nmro_ptos_ext_localiz integer,
  tipo_calefaccion integer,
  tipo_climatizacion integer,
  rosetas_voz integer,
  rosetas_datos integer,
  cañon_fijo integer,
  pantalla_proyector integer,
  equipo_de_sonido integer,
  tv integer,
  video integer,
  dvd integer,
  fotocopiadoras integer,
  impresoras integer,
  ordenadores integer,
  faxes integer,
  telefonos integer,
  pizarra integer,
  nmro_plazas integer,
  cad_asociado text,
  observaciones text,
  extintores_de_polvo integer,
  extintores_de_co2 integer,
  nmro_extintores_polvo integer,
  nmro_extintores_co2 integer,
  bies integer,
  nmro_bies integer,
  tipo_bies integer,
  columna_seca integer,
  grupo_de_presion_incendios integer,
  deteccion_de_incendios integer,
  proteccion_por_rociadores integer,
  iluminacion_de_emergencia integer,
  potencia_electrica_instaladaw integer,
  reservable integer,
  PRIMARY KEY (id_espacio)
);

CREATE TABLE IF NOT EXISTS tb_tipo_de_uso (
	id integer,
	tipo_de_uso text,
  nmro_estructura_uso_crue integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_orientacion (
	orientacion text,
	id integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_persianas (
	persianas text,
	id integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_ciudades (
  id integer,
  ciudades text,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_pizarra (
	pizarra text,
	id integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_tipo_bies (
	tipo_bies text,
	id integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_fotos (
  id integer,
  id_espacio text,
  foto1 text,
  foto2 text,
  foto3 text,
  foto4 text,
  foto5 text,
  foto6 text,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_tipo_climatizacion (
	tipo_climatizacion text,
	id integer,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_tipo_calefaccion (
  id integer,
  tipo_calefaccion text,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tb_users (
	email varchar(40) NOT NULL,
	pass varchar(10) NOT NULL,
  	created DATE,
 	type varchar(15),
 	username varchar(20),
	PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS tb_horarios (
  idEspacio text,
	dia text,
	hora integer,
	actividad text
);

CREATE TABLE IF NOT EXISTS tb_horarios_mantenimiento (
  username varchar(20),
	hora integer,
	PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS tb_localizacion(
  id serial primary key,
  x float(10),
  y float(10),
  planta integer,
  id_espacio text
);


CREATE TABLE IF NOT EXISTS tb_incidencias (
  idIncidencia serial primary key,
  titulo text,
  estado text,
  descripcion text,
  idLocalizacion integer,
  FOREIGN KEY(idLocalizacion) REFERENCES tb_localizacion(id)
);
