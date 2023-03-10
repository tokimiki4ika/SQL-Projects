SELECT M.PIZZA_NAME, PZ.NAME PIZZERIA_NAME
FROM PERSON_ORDER PO
    INNER JOIN PERSON P ON P.ID = PO.PERSON_ID
    INNER JOIN MENU M ON M.ID = PO.MENU_ID
    INNER JOIN PIZZERIA PZ ON PZ.ID = M.PIZZERIA_ID
WHERE P.NAME = 'Denis' OR P.NAME = 'Anna'
ORDER BY M.PIZZA_NAME, PIZZERIA_NAME;
