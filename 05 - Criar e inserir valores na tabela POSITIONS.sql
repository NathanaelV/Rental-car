-- SQLite

-- Criar tabela POSITIONS
CREATE TABLE POSITIONS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DESCRIPTION VARCHAR(100)
);

INSERT INTO POSITIONS (DESCRIPTION) VALUES
    ('Gerente de vendas'),
    ('Gerente de compras'),
    ('Vendedor'),
    ('Mecânico'),
    ('Assistente Administrativo');

-- Visualizar
SELECT * FROM POSITIONS;
