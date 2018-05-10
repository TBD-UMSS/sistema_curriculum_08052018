/**********************I-PATCH-YAC-CURR-0-08-05-2018**********************/

--------------- SQL ---------------

CREATE SCHEMA curr AUTHORIZATION postgres;


--------------- SQL ---------------

CREATE TABLE curr.instuccion_educativa (
  id_institucion_educativa SERIAL NOT NULL,
  instituccion_educativa VARCHAR NOT NULL,
  direccion VARCHAR,
  telefono VARCHAR(1),
  PRIMARY KEY(id_institucion_educativa)
) 
WITH (oids = false);

ALTER TABLE curr.instuccion_educativa
  ALTER COLUMN id_institucion_educativa SET STATISTICS 0;

--------------- SQL ---------------

CREATE TABLE curr.dato_personal (
  id_dato_personal SERIAL NOT NULL,
  nombres VARCHAR NOT NULL,
  apellido_paterno VARCHAR,
  apellido_materno VARCHAR,
  ci INTEGER,
  fecha_nacimiento DATE,
  fecha_registro TIMESTAMP WITHOUT TIME ZONE DEFAULT now(),
  PRIMARY KEY(id_dato_personal)
) 
WITH (oids = false);



--------------- SQL ---------------

CREATE TABLE curr.estudio (
  fecha_graduacion DATE,
  nivel_academico VARCHAR,
  fecha_inicio DATE,
  fecha_fin DATE,
  mencion VARCHAR,
  id_dato_personal INTEGER,
  id_institucion_educativa INTEGER
) 
WITH (oids = false);

/**********************F-PATCH-YAC-CURR-0-08-05-2018**********************/