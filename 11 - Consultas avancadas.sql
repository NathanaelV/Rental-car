-- SQLite

-- Construa uma consulta capaz de exibir todas as Locações realizadas, 
-- assim como também o nome do Cliente, do Automóvel e do Funcionário vinculados em cada locação
SELECT  CT.NAME || ' ' || CT.LASTNAME   AS 'Cliente',
        CA.NAME                         AS 'Automóvel',
        EM.NAME                         AS 'Funcionário'
    FROM LOCATIONS AS LO JOIN CUSTOMERS AS CT ON (LO.CUSTOMER_ID = CT.ID)
    JOIN CARS AS CA ON (LO.CAR_ID = CA.ID)
    JOIN EMPLOYEES AS EM ON (EM.ID = LO.EMPLOYEE_ID);

-- Mostrar tabela
SELECT * FROM LOCATIONS;
SELECT * FROM CARS;


-- Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(START_DATE) AS 'Total de locações' FROM LOCATIONS;


-- Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT max(TOTAL) FROM LOCATIONS;


-- Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”
SELECT  CT.NAME || ' ' || CT.LASTNAME   AS 'Cliente',
        CA.NAME                         AS 'Automóvel',
        EM.NAME                         AS 'Funcionário',
        LO.START_DATE                   AS 'Data de locação',
        LO.END_DATE                     AS 'Data de devolução'
    FROM LOCATIONS AS LO JOIN CUSTOMERS AS CT ON (LO.CUSTOMER_ID = CT.ID)
    JOIN CARS AS CA ON (LO.CAR_ID = CA.ID)
    JOIN EMPLOYEES AS EM ON (EM.ID = LO.EMPLOYEE_ID)
    WHERE LO.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';