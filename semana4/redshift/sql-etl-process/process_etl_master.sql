-- \c etl_db ;
CREATE SCHEMA desastres_final;

CREATE SCHEMA desastres_bde;

CREATE TABLE
    desastres_final.clima (
        year INT NOT NULL PRIMARY KEY,
        temperatura NUMERIC NOT NULL,
        oxigeno NUMERIC NOT NULL
    );

-- Insertar valores manualmente
INSERT INTO
    clima
VALUES
    (2023, 22.5, 230),
    (2024, 22.7, 228.6),
    (2025, 22.9, 227.5),
    (2026, 23.1, 226.7),
    (2027, 23.2, 226.4),
    (2028, 23.4, 226.2),
    (2029, 23.6, 226.1),
    (2030, 23.8, 225.1);

create table
    desastres_final.desastres (
        year int not null primary key,
        tsunamis int not null,
        olas_calor int not null,
        terremotos int not null,
        erupciones int not null,
        incendios int not null
    );


INSERT INTO
    desastres
VALUES
    (2023, 2, 15, 6, 7, 50);

INSERT INTO
    desastres
VALUES
    (2024, 1, 12, 8, 9, 46);

INSERT INTO
    desastres
VALUES
    (2025, 3, 16, 5, 6, 47);

INSERT INTO
    desastres
VALUES
    (2026, 4, 12, 10, 13, 52);

INSERT INTO
    desastres
VALUES
    (2027, 5, 12, 6, 5, 41);

INSERT INTO
    desastres
VALUES
    (2028, 4, 18, 3, 2, 39);

INSERT INTO
    desastres
VALUES
    (2029, 2, 19, 5, 6, 49);

INSERT INTO
    desastres
VALUES
    (2030, 4, 20, 6, 7, 50);

-- 4. crear tabla muertes proyectadas por rangos de edad
CREATE TABLE
    muertes (
        año INT NOT NULL PRIMARY KEY,
        R_Menor15 INT NOT NULL,
        R_15_a_30 INT NOT NULL,
        R_30_a_45 INT NOT NULL,
        R_45_a_60 INT NOT NULL,
        R_M_a_60 INT NOT NULL
    );

GO
-- Insertar valores manualmente
INSERT INTO
    muertes
VALUES
    (2023, 1000, 1300, 1200, 1150, 1500);

INSERT INTO
    muertes
VALUES
    (2024, 1200, 1250, 1260, 1678, 1940);

INSERT INTO
    muertes
VALUES
    (2025, 987, 1130, 1160, 1245, 1200);

INSERT INTO
    muertes
VALUES
    (2026, 1560, 1578, 1856, 1988, 1245);

INSERT INTO
    muertes
VALUES
    (2027, 1002, 943, 1345, 1232, 986);

INSERT INTO
    muertes
VALUES
    (2028, 957, 987, 1856, 1567, 1756);

INSERT INTO
    muertes
VALUES
    (2029, 1285, 1376, 1465, 1432, 1236);

INSERT INTO
    muertes
VALUES
    (2030, 1145, 1456, 1345, 1654, 1877);

-- 5. Crear base de datos para alojar resumenes de estadisticas
CREATE DATABASE DESASTRES_BDE;

GO USE DESASTRES_BDE GO
CREATE TABLE
    DESASTRES_FINAL (
        Cuatrenio varchar(20) NOT NULL PRIMARY KEY,
        Temp_AVG FLOAT NOT NULL,
        Oxi_AVG FLOAT NOT NULL,
        T_Tsunamis INT NOT NULL,
        T_OlasCalor INT NOT NULL,
        T_Terremotos INT NOT NULL,
        T_Erupciones INT NOT NULL,
        T_Incendios INT NOT NULL,
        M_Jovenes_AVG FLOAT NOT NULL,
        M_Adutos_AVG FLOAT NOT NULL,
        M_Ancianos_AVG FLOAT NOT NULL
    );

GO