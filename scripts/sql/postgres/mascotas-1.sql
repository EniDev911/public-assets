DROP TABLE mascotas;

CREATE TABLE mascotas (
    id_mascota INT2,
    nombre VARCHAR(40) NOT NULL,
    especie CHAR(1) NOT NULL,
    sexo CHAR(1),
    ubicacion VARCHAR(3),
    estado CHAR(1),
    PRIMARY KEY(id_mascota)
);

INSERT INTO mascotas 
(id_mascota, nombre, especie, sexo, ubicacion, estado)
VALUES 
(1001, 'Budy', 'P', 'M', 'E05', 'B'),
(1002, 'Pipo', 'P', 'M', 'E02', 'B'),
(1003, 'Nuna', 'P', 'H', 'E02', 'A'),
(1004, 'Americo', 'G', 'M', 'E04', 'A'),
(1005, 'Sombra', 'P', 'H', 'E05', 'A'),
(1007, 'Amaya', 'G', 'H', 'E04', 'A'),
(1008, 'Talia', 'G', 'H', 'E01', 'B'),
(1009, 'Trabis', 'P', 'M', 'E02', 'A'),
(1010, 'Titito', 'G', 'M', 'E04', 'B'),
(1011, 'Truca', 'P', 'M', 'E02', 'A'),
(1012, 'Zulay', 'P', 'H', 'E05', 'A'),
(1013, 'Dandi', 'G', 'M', 'E04', 'A'),
(1014, 'Ras', 'G', 'M', 'E01', 'A'),
(1015, 'Canela', 'P', 'H', 'E02', 'A'),
(1016, 'Batan', 'P', 'M', 'E01', 'B'),
(1017, 'Coco', 'G', 'M', 'E02', 'A');

SELECT * FROM mascotas;
