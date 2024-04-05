-- SQLite

-- CUSTOMERS

-- Atualizar o campo e-mail da cliente Carolina
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE NAME = 'Carolina';

-- Atulizar a data de nascimento do Cliente Josefa para “1986-06-19”
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE NAME = 'Josefa';

-- Mostrar tabela
SELECT * FROM CUSTOMERS;


-- CARS

-- Atualizar o ano do automóvel Fiat Cronos de 2022 para 2019 na tabela CARS
UPDATE CARS SET YEAR = 2019 WHERE NAME = 'Fiat Cronos';

-- Deletar o automóvel com nome Hyundai HB20 1.6 da tabela CARS
DELETE FROM CARS WHERE NAME = 'Hyundai HB20 1.6';

-- Mostrar tabela
SELECT * FROM CARS;


-- EMPLOYEES

-- Atualizar a coluna PHONE para PHONE_NUMBER
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;

-- Mostrar tabela
SELECT * FROM EMPLOYEES;
