SELECT PERSON_ID,
       COUNT(PERSON_ID) COUNT_OF_VISITS
FROM PERSON_VISITS
GROUP BY PERSON_ID
ORDER BY 2 DESC, 1;