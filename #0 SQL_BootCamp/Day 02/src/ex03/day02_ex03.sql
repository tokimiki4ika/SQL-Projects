WITH TMP AS (SELECT *
             FROM PERSON_VISITS PV
             WHERE PV.PERSON_ID = 1 OR PV.PERSON_ID = 2)
SELECT VALUE::DATE AS MISSING_DATE
FROM GENERATE_SERIES('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 day'::interval) VALUE
    LEFT JOIN TMP ON TMP.VISIT_DATE = VALUE
WHERE TMP.VISIT_DATE IS NULL
ORDER BY VALUE;
