CREATE DATABASE OFICINA;

USE OFICINA;

CREATE TABLE CLIENTES(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    SEXO ENUM('M','F') NOT NULL,
    NOME VARCHAR(30) NOT NULL,
    ID_CARRO INT UNIQUE
);

CREATE TABLE TELEFONES(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES', 'CEL', 'COM') NOT NULL,
    NUMERO VARCHAR(20) NOT NULL UNIQUE,
    ID_CLIENTE INT
);

CREATE TABLE MARCA(
    IDMARCA INT PRIMARY KEY AUTO_INCREMENT,
    MARCA VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE CARROS(
    IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
    MODELO VARCHAR(30) NOT NULL,
    PLACA VARCHAR(30) NOT NULL UNIQUE,
    ID_MARCA INT
);

CREATE TABLE CORES(
    IDCOR INT PRIMARY KEY AUTO_INCREMENT,
    COR VARCHAR(30) NOT NULL UNIQUE
); 

CREATE TABLE CARRO_COR(
    ID_CARRO INT,
    ID_COR INT,
    PRIMARY KEY(ID_CARRO,ID_COR)
);

ALTER TABLE CLIENTES
ADD CONSTRAINT FK_CLIENTE_CARROS
FOREIGN KEY(ID_CARRO)
REFERENCES CARROS(IDCARRO);

ALTER TABLE TELEFONES
ADD CONSTRAINT FK_TELEFONE_CLIENTE
FOREIGN KEY(ID_CLIENTE)
REFERENCES CLIENTES(IDCLIENTE);

ALTER TABLE CARROS
ADD CONSTRAINT FK_CARROS_MARCA
FOREIGN KEY(ID_MARCA)
REFERENCES MARCA(IDMARCA);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_CARRO_COR_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARROS(IDCARRO);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_CARRO_COR_COR
FOREIGN KEY(ID_COR)
REFERENCES CORES(IDCOR);

INSERT INTO CORES VALUE(NULL, 'Amarelo');
INSERT INTO CORES VALUE(NULL, 'Ciano');
INSERT INTO CORES VALUE(NULL, 'Dourado');
INSERT INTO CORES VALUE(NULL, 'Prata');
INSERT INTO CORES VALUE(NULL, 'Laranja');
INSERT INTO CORES VALUE(NULL, 'Marrom');
INSERT INTO CORES VALUE(NULL, 'Cinza');
INSERT INTO CORES VALUE(NULL, 'Branco');
INSERT INTO CORES VALUE(NULL, 'Rosa');
INSERT INTO CORES VALUE(NULL, 'Preto');
INSERT INTO CORES VALUE(NULL, 'Azul');
INSERT INTO CORES VALUE(NULL, 'Verde');

INSERT INTO CARRO_COR VALUE(1, 1);
INSERT INTO CARRO_COR VALUE(2, 1);
INSERT INTO CARRO_COR VALUE(3, 4);
INSERT INTO CARRO_COR VALUE(4, 12);
INSERT INTO CARRO_COR VALUE(5, 12);
INSERT INTO CARRO_COR VALUE(6, 3);
INSERT INTO CARRO_COR VALUE(7, 5);
INSERT INTO CARRO_COR VALUE(8, 4);
INSERT INTO CARRO_COR VALUE(9, 9);
INSERT INTO CARRO_COR VALUE(10, 8);
INSERT INTO CARRO_COR VALUE(11, 7);
INSERT INTO CARRO_COR VALUE(12, 6);
INSERT INTO CARRO_COR VALUE(13, 2);
INSERT INTO CARRO_COR VALUE(14, 11);
INSERT INTO CARRO_COR VALUE(15, 12);
INSERT INTO CARRO_COR VALUE(16, 4);
INSERT INTO CARRO_COR VALUE(17, 2);

INSERT INTO CARROS VALUE(NULL, '1M', 'GTA-3387', 11);
INSERT INTO CARROS VALUE(NULL, 'i3', 'AWS-1237', 11);
INSERT INTO CARROS VALUE(NULL, 'TURBO R', 'HJU-9899', 1);
INSERT INTO CARROS VALUE(NULL, '145', 'MRJ-8383', 2);
INSERT INTO CARROS VALUE(NULL, 'SPIDER', 'HEY-2424', 2);
INSERT INTO CARROS VALUE(NULL, 'SPACEFOX', 'SSL-2341', 10);
INSERT INTO CARROS VALUE(NULL, 'UP', 'AEJ-6922', 10);
INSERT INTO CARROS VALUE(NULL, 'SAVEIRO', 'LIP-8712', 10);
INSERT INTO CARROS VALUE(NULL, 'BALENO', 'CDP-1810', 9);
INSERT INTO CARROS VALUE(NULL, 'PHANTOM', 'IHM-9999', 8);
INSERT INTO CARROS VALUE(NULL, 'WRX', 'TFF-8653', 7);
INSERT INTO CARROS VALUE(NULL, 'CAYMAN', 'CAY-9812', 6);
INSERT INTO CARROS VALUE(NULL, 'PANAMERA', 'PAR-7123', 6);
INSERT INTO CARROS VALUE(NULL, '850', 'VEI-3591', 4);
INSERT INTO CARROS VALUE(NULL, 'BANDEIRANTE', 'UIK-1292', 5);
INSERT INTO CARROS VALUE(NULL, 'AIRTREK', 'GTA-2352', 3);
INSERT INTO CARROS VALUE(NULL, 'GALANT', 'SAD-3387', 3);

INSERT INTO CLIENTES VALUE(NULL, 'F', 'Paula', 1);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Luiza', 2);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Ana', 3);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Jennifer', 4);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Augusto', 5);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Estev??o', 6);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Alexandre', 7);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Antonio', 8);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Paulinho', 9);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Isabela', 10);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Adriana', 11);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Rafaela', 12);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Kauanny', 13);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Isadora', 14);
INSERT INTO CLIENTES VALUE(NULL, 'F', 'Magda', 15);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Xand??o', 16);
INSERT INTO CLIENTES VALUE(NULL, 'M', 'Lucas', 17);

INSERT INTO MARCA VALUE(NULL, 'BENTLEY');
INSERT INTO MARCA VALUE(NULL, 'ALFA ROMEO');
INSERT INTO MARCA VALUE(NULL, 'MITSUBISHI');
INSERT INTO MARCA VALUE(NULL, 'VOLVO');
INSERT INTO MARCA VALUE(NULL, 'TOYOTA');
INSERT INTO MARCA VALUE(NULL, 'PORSCHE');
INSERT INTO MARCA VALUE(NULL, 'SUBARU');
INSERT INTO MARCA VALUE(NULL, 'ROLLS ROYCE');
INSERT INTO MARCA VALUE(NULL, 'SUZUKI');
INSERT INTO MARCA VALUE(NULL, 'VOLKSWAGEN');
INSERT INTO MARCA VALUE(NULL, 'BMW');

INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3651-7402', 1);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 92012-2351', 1);
INSERT INTO TELEFONES VALUE(NULL, 'COM', '(31) 3241-3224', 1);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93252-2412', 17);
INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3134-7314', 2);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93241-1455', 2);
INSERT INTO TELEFONES VALUE(NULL, 'COM', '(31) 3215-7512', 16);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93216-2631', 16);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93213-7415', 4);
INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3241-1202', 12);
INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3214-2341', 8);
INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3124-2314', 13);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 92321-1424', 6);
INSERT INTO TELEFONES VALUE(NULL, 'COM', '(31) 3151-7245', 10);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93715-2321', 14);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93212-4124', 14);
INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3324-2134', 14);
INSERT INTO TELEFONES VALUE(NULL, 'RES', '(31) 3522-2351', 15);
INSERT INTO TELEFONES VALUE(NULL, 'CEL', '(31) 93216-9174', 3);

