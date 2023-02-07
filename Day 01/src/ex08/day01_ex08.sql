SELECT PO.ORDER_DATE,
       CONCAT(P.NAME, ' (age:', P.AGE, ')') AS PERSON_INFORMATION
FROM PERSON_ORDER PO
NATURAL JOIN (SELECT ID AS PERSON_ID, NAME, AGE FROM PERSON) P
ORDER BY PO.ORDER_DATE, PERSON_INFORMATION;
