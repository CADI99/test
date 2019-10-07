
CREATE SCHEMA IF NOT EXISTS `base` DEFAULT CHARACTER SET utf8 ;
--
-- Base de datos: `usuario-empresa-producto`
--

-- -----------------------------------------------------
-- Tabla `base`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base`.`users` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `pass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `base`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base`.`empresa` (
  `idempresa` INT NOT NULL AUTO_INCREMENT,
  `estado_empresa` VARCHAR(1) NOT NULL---1 activa, 0 inactiva
  `dueño` INT NOT NULL,---id de usuario propietario
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idempresa`),

  CONSTRAINT `fk_dueño`
    FOREIGN KEY (`dueño`)
    REFERENCES `base`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `base`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `estado_producto` INT NOT NULL,---1 activo, 0 inactivo
  `empresa_de_venta` INT NOT NULL,---id de empresa donde se vende
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idproducto`),

  CONSTRAINT `fk_empresa`
    FOREIGN KEY (`empresa_de_venta`)
    REFERENCES `base`.`empresa` (`idempresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- usuario maestro
-- -----------------------------------------------------
INSERT INTO `base`.`usuario` VALUES (null,'CARLOS', 'CARLOSTORRESDIAZ99@GMAIL.COM','1');