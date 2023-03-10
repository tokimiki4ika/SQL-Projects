CREATE OR REPLACE FUNCTION FNC_PERSONS_FEMALE()
    RETURNS TABLE
    (
        NAME VARCHAR
    ) AS
$PERSON_AUDIT$
    SELECT NAME
    FROM PERSON
    WHERE GENDER = 'female'
$PERSON_AUDIT$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION FNC_PERSONS_MALE()
    RETURNS TABLE
    (
        NAME VARCHAR
    ) AS
$PERSON_AUDIT$
    SELECT NAME
    FROM PERSON
    WHERE GENDER = 'male'
$PERSON_AUDIT$ LANGUAGE SQL;

SELECT *
FROM FNC_PERSONS_MALE();

SELECT NAME
FROM FNC_PERSONS_FEMALE();
