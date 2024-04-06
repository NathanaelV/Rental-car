-- SQLite

-- CUSTOMERS

-- Mostrar somente nome, lastname e email dos clientes que moram no estado de "SP"
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- Mostrar tabela inteira
SELECT * FROM CUSTOMERS;


-- CARS

-- Mostrar os carros com status "Liberado"
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- Mostrar todos os carros do ano de 2016
SELECT * FROM CARS WHERE YEAR = 2016;

-- Mostar tabela inteira
SELECT * FROM CARS;


-- EMPLOYEES

-- Mostrar todos os funcionários e seus respectivos cargos
SELECT  EM.ID,
        EM.NAME              AS 'Funcionário',
        EM.PHONE_NUMBER      AS 'Número de telefone',
        EM.CONTRACT_DATE     AS 'Data de contratação',
        PO.DESCRIPTION       AS 'Cargo'
    FROM EMPLOYEES AS EM JOIN POSITIONS AS PO ON (EM.POSITION_ID = PO.ID);

-- Mostrar tabela inteira
SELECT * FROM EMPLOYEES;


-- LOCATIONS

-- Mostrar todos os funcionários que realizaram 2 ou mais locações
SELECT  EM.NAME AS 'Nome do funcionário'
    FROM LOCATIONS AS LO JOIN EMPLOYEES AS EM ON (LO.EMPLOYEE_ID = EM.ID)
    GROUP BY EM.NAME HAVING COUNT(NAME) > 1;

-- Mostrar todos os Clientes que fizeram mais de 1 locação
SELECT  CT.NAME AS 'Nome',
        CT.LASTNAME AS 'Sobrenome'
    FROM LOCATIONS AS LO JOIN CUSTOMERS AS CT ON (LO.CUSTOMER_ID = CT.ID)
    GROUP BY CT.NAME HAVING COUNT(NAME) > 1;
