-- SQLite

-- Criar tabela CAR_MODEL

CREATE TABLE CAR_MODEL (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME VARCHAR(100) NOT NULL
);

-- Inserir valores
INSERT INTO CAR_MODEL (NAME) VALUES
    ('Conversível'),
    ('Sedã'),
    ('Hatch'),
    ('Coupé'),
    ('Perua'),
    ('SUV'),
    ('Picape'),
    ('Minivan'),
    ('Utilitário'),
    ('Buggy');

-- Mostrar os valores
SELECT * FROM CAR_MODEL
