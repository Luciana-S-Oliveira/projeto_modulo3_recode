CREATE DATABASE rota_de_ferias;

USE rota_de_ferias;


CREATE TABLE Usuarios (
    id_usuario INTEGER PRIMARY KEY,
    nome_usuario VARCHAR(100),
    email_usuario VARCHAR(100),
    senha_usuario VARCHAR(100)
);

CREATE TABLE Pacotes (
    id_pacote INTEGER PRIMARY KEY,
    nome_pacote VARCHAR(100),
    preco_pacote DECIMAL(10,2),
    ida_pacote DATE,
    volta_pacote DATE
);

CREATE TABLE compra (
    fk_Usuarios_id_usuario INTEGER,
    fk_Pacotes_id_pacote INTEGER,
    id_compra INTEGER PRIMARY KEY,
    data_compra DATE
);
 
ALTER TABLE compra ADD CONSTRAINT FK_compra_2
    FOREIGN KEY (fk_Usuarios_id_usuario)
    REFERENCES Usuarios (id_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE compra ADD CONSTRAINT FK_compra_3
    FOREIGN KEY (fk_Pacotes_id_pacote)
    REFERENCES Pacotes (id_pacote)
    ON DELETE SET NULL;

    select * from Usuarios
    select * from Pacotes
    select * from compra