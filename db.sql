CREATE TABLE usuario (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  contrasena VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX nombre_UNIQUE (nombre ASC) VISIBLE);

CREATE TABLE producto (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  stock INT NOT NULL,
  precio DECIMAL(2,0) NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE carrito (
  idusuario INT NOT NULL,
  idproducto INT NOT NULL,
  cantidad INT NOT NULL,
  PRIMARY KEY (idusuario, idproducto),
  UNIQUE INDEX idproducto_UNIQUE (idproducto ASC) VISIBLE,
  CONSTRAINT idproducto
    FOREIGN KEY (idproducto)
    REFERENCES producto (id),
  CONSTRAINT idusuario
    FOREIGN KEY (idusuario)
    REFERENCES usuario (id));