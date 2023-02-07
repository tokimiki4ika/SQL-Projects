SELECT NAME
FROM PIZZERIA
WHERE ID NOT IN (SELECT pizzeria_id FROM PERSON_VISITS WHERE pizzeria_id = PIZZERIA.ID);

SELECT NAME
FROM PIZZERIA
WHERE NOT EXISTS (SELECT pizzeria_id FROM PERSON_VISITS WHERE pizzeria_id = PIZZERIA.ID);
