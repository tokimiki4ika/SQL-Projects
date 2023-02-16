SELECT P.ADDRESS,
       PZ.NAME,
       COUNT(PO.ID) COUNT_OF_ORDERS
FROM PERSON_ORDER PO
INNER JOIN PERSON P ON P.ID = PO.PERSON_ID
INNER JOIN MENU M ON M.ID = PO.MENU_ID
INNER JOIN PIZZERIA PZ ON PZ.ID = M.PIZZERIA_ID
GROUP BY 1, 2
ORDER BY 1, 2;