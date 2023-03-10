SELECT DISTINCT PO.ORDER_DATE AS ACTION_DATE, PO.PERSON_ID
FROM PERSON_ORDER AS PO, PERSON_VISITS AS PV
WHERE PO.ORDER_DATE = PV.VISIT_DATE AND PO.PERSON_ID = PV.PERSON_ID
ORDER BY ACTION_DATE, PERSON_ID DESC;
