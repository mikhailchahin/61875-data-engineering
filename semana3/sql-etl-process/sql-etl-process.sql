DROP DATABASE IF EXISTS stage_db;
CREATE DATABASE stage_db;
\c stage_db ;

CREATE TABLE eventos_apocalipticos (
    id_evento SERIAL PRIMARY KEY,
    nombre_evento VARCHAR(100),
    fecha_evento DATE,
    descripcion_evento TEXT
);


DROP DATABASE IF EXISTS prod_db;
CREATE DATABASE prod_db;
\c prod_db ;


CREATE TABLE prediccion_fin_mundo (
    id_evento INT PRIMARY KEY,
    nombre_evento VARCHAR(100),
    fecha_evento DATE,
    descripcion_evento TEXT,
    dias_faltantes INT,
    fuente_prediccion VARCHAR(100)
);
