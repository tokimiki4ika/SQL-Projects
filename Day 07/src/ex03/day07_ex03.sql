WITH VISITS AS (SELECT PZ.NAME,
                       COUNT(PV.PIZZERIA_ID) CNT
FROM PERSON_VISITS PV
INNER JOIN PIZZERIA PZ ON PZ.ID = PV.PIZZERIA_ID
GROUP BY PZ.NAME),

ORDERS AS (SELECT PZ.NAME,
                  COUNT(M.PIZZERIA_ID) CNT
FROM PERSON_ORDER PO
INNER JOIN MENU M on M.ID = PO.MENU_ID
INNER JOIN PIZZERIA PZ ON PZ.ID = M.PIZZERIA_ID
GROUP BY PZ.NAME)


SELECT V.NAME,
       CASE WHEN V.CNT IS NULL THEN 0 ELSE V.CNT END + CASE WHEN O.CNT IS NULL THEN 0 ELSE O.CNT END total_count
FROM VISITS V
FULL OUTER JOIN ORDERS O ON V.NAME = O.NAME
ORDER BY 2 DESC, 1;
