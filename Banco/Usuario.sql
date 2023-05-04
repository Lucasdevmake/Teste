-- tabela usuario
CREATE TABLE usuario (
    id int generated always as identity,
    nome varchar(64) NOT NULL,
    email varchar(128) NOT NULL,
    login varchar(128) NOT NULL,
    senha varchar(64) NOT NULL,
    data_cadastro timestamp NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (id),
    CONSTRAINT uq_usuario_email UNIQUE (email),
    CONSTRAINT uq_usuario_login UNIQUE (login)
);

-- Inserts for usuario table
INSERT INTO usuario (nome, email, login, senha, data_cadastro) 
VALUES
('Thomaz', 'thomazfalbo@outlook.com', 'Bakumito', '123', now()),
('Noaly', 'noalyfalbo@outlook.com', 'Noaly', '12345678', now());