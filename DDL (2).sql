use loja_viking;

CREATE TABLE produtos (
    ID_PRODUTO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SKU VARCHAR(64) NOT NULL,
    TAMANHO VARCHAR(64) NOT NULL,
    TIPO VARCHAR(64) NOT NULL,
    COR VARCHAR(64) NOT NULL,
    PRECO DECIMAL(10 , 2 ) NOT NULL,
    QUANTIDADE VARCHAR(64) NOT NULL
);

CREATE TABLE clientes (
    CPF BIGINT PRIMARY KEY NOT NULL,
    NOME VARCHAR(64) NOT NULL
);

CREATE TABLE avaliacoes (
    ID_AVALIACAO INT PRIMARY KEY NOT NULL,
    CPF BIGINT NOT NULL,
    FOREIGN KEY (CPF)
        REFERENCES clientes (CPF),
    ID_PRODUTO INT NOT NULL,
    FOREIGN KEY (ID_PRODUTO)
        REFERENCES produtos (ID_PRODUTO),
    NOTA DECIMAL(10 , 2 ) NOT NULL,
    DATA_AVALIACAO DATE
);









