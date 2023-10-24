CREATE DATABASE bd_integradash;

USE bd_integradash;

CREATE TABLE tb_planta (
id BINARY(16) NOT NULL,
nome_planta VARCHAR(255) NOT NULL,
endereco_planta VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_planta_erro (
id_erro BINARY(16) NOT NULL,
id_planta BINARY(16) NOT NULL,
descricao VARCHAR(255) NOT NULL,
FOREIGN KEY (id_planta) REFERENCES tb_planta (id),
FOREIGN KEY (id_erro) REFERENCES tb_erro (id)
);

CREATE TABLE tb_erro (
id_erro BINARY(16) NOT NULL,
nome_erro VARCHAR(255) NOT NULL,
data_erro DATETIME(6) NOT NULL,
descricao_erro DATETIME(6) NOT NULL,
status_erro VARCHAR(255) ,
PRIMARY KEY (id)
);

