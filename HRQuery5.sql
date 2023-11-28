/*Sirketimizde departman bazli halen calismaya devam eden kadin ve erkek sayilari
seklinde iki ayri sutun olacak sekilde getiren sorguyu yaziniz*/

-- burada join yapmayacagiz cunku yaparsak kadin ve erkek icin satir tekrari soz konusu olur

SELECT *,
(SELECT COUNT(*) FROM PERSON  WHERE DEPARTMENTID=D.ID AND GENDER='E' AND OUTDATE IS NULL) AS MALE_PERSONCOUNT,
(SELECT COUNT(*) FROM PERSON  WHERE DEPARTMENTID=D.ID AND GENDER='K' AND OUTDATE IS NULL) AS FEMALE_PERSONCOUNT
FROM
DEPARTMENT D
ORDER BY D.DEPARTMENT