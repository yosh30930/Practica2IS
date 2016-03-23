-- Database: "Practica2IS"

-- DROP DATABASE "Practica2IS";

CREATE DATABASE "Practica2IS"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
       CONNECTION LIMIT = -1;

	  CREATE TABLE usuario
(
  id integer NOT NULL,
  nombre character varying(255) NOT NULL,
  email character varying(255) NOT NULL,
  contrasenia character varying(255) NOT NULL,
  CONSTRAINT usuario_pkey PRIMARY KEY (id)
);


CREATE TABLE servidor
	(
	  nidusuario integer,
	  visitas integer,
	  CONSTRAINT servidor_nidusuario_fkey FOREIGN KEY (nidusuario)
	      REFERENCES public.usuario (id) MATCH SIMPLE
	      ON UPDATE NO ACTION ON DELETE NO ACTION
	);


