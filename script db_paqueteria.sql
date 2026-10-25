USE db_paqueteria;
CREATE TABLE IF NOT EXISTS camion (
    idCamion INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    potencia DECIMAL(10,2),
    noPlaca VARCHAR(20) UNIQUE,
    PRIMARY KEY (idCamion)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS camionero (
    idCamionero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100),
    direccion VARCHAR(200),
    salario DECIMAL(10,2),
    poblacion VARCHAR(100),
    dpi VARCHAR(20) UNIQUE,
    telefono VARCHAR(20),
    PRIMARY KEY (idCamionero)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS paquete (
    idPaquete INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(200),
    destinatario VARCHAR(100),
    peso DECIMAL(10,2),
    direccion VARCHAR(200),
    idCamionero INT,
    idCiudad INT,
    PRIMARY KEY (idPaquete),
    CONSTRAINT fk_paquete_camionero
        FOREIGN KEY (idCamionero) REFERENCES camionero(idCamionero),
    CONSTRAINT fk_paquete_ciudad
        FOREIGN KEY (idCiudad) REFERENCES ciudad(idCiudad)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS conductor_camion (
    idConductorCamion INT NOT NULL AUTO_INCREMENT,
    idCamionero INT,
    idCamion INT,
    fecha DATE,
    PRIMARY KEY (idConductorCamion),
    CONSTRAINT fk_cc_camionero
        FOREIGN KEY (idCamionero) REFERENCES camionero(idCamionero),
    CONSTRAINT fk_cc_camion
        FOREIGN KEY (idCamion) REFERENCES camion(idCamion)
) ENGINE=InnoDB;
