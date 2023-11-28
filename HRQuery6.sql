/*sirketimizin planlama departmanina yeni bir sef atamasi yapildi ve maasini belirlemek istiyoru.
Planlama departmani icin minimum, max ve ort sef maasi getiren sorgu hangisidir
not: isten cikarilmis personel maasi dahildir*/

SELECT *
--POS.POSITION,
--MIN(P.SALARY) AS MIN_SALARY,
--MAX(P.SALARY) AS MAX_SALARY,
--AVG(P.SALARY) AS AVG_SALARY
FROM POSITION POS
INNER JOIN PERSON P ON P.POSITIONID=POS.ID
WHERE POS.POSITION = 'PLANLAMA �EF�'
GROUP BY POS.POSITION

-------------------------------------

SELECT
POS.POSITION,
(SELECT MIN(SALARY) FROM PERSON WHERE POSITIONID=POS.ID) AS MIN_SALARY,
(SELECT MAX(SALARY) FROM PERSON WHERE POSITIONID=POS.ID) AS MAX_SALARY,
(SELECT AVG(SALARY) FROM PERSON WHERE POSITIONID=POS.ID) AS AVG_SALARY
FROM POSITION POS
WHERE POS.POSITION='PLANLAMA �EF�'

------------------------------------

SELECT
POS.POSITION,
(SELECT MIN(SALARY) FROM PERSON WHERE POSITIONID=POS.ID) AS MIN_SALARY,
(SELECT MAX(SALARY) FROM PERSON WHERE POSITIONID=POS.ID) AS MAX_SALARY,
ROUND((SELECT AVG(SALARY) FROM PERSON WHERE POSITIONID=POS.ID),0) AS AVG_SALARY
FROM POSITION POS
WHERE POS.POSITION='PLANLAMA �EF�'