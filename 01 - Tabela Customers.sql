-- SQLite

-- Criar tabela CUSTOMERS (Clientes)
CREATE TABLE CUSTOMERS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME VARCHAR(100) NOT NULL,
    LASTNAME VARCHAR(100) NOT NULL,
    PHONE VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    ADDRESS TEXT NOT NULL,
    CITY VARCHAR(100) NOT NULL,
    STATE VARCHAR(2) NOT NULL,
    BIRTH_DATE DATETIME NOT NULL
);
