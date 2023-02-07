SELECT DISTINCT
    (SELECT PERSON.NAME) AS NAME
FROM PERSON, PERSON_ORDER
WHERE PERSON.ID = PERSON_ID AND PERSON_ORDER.ORDER_DATE = '2022-01-07' AND (PERSON_ORDER.MENU_ID = 13 OR PERSON_ORDER.MENU_ID = 14 OR PERSON_ORDER.MENU_ID = 18);
