--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(SELECT first_name FROM ACTOR
)
UNION
(SELECT first_name FROM customer);

--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
(SELECT first_name FROM ACTOR
)
INTERSECT
(SELECT first_name FROM customer);

--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
(SELECT first_name FROM ACTOR
)
EXCEPT
(SELECT first_name FROM customer);


--İlk 3 sorguyu tekrar eden veriler için de yapalım.
(SELECT first_name FROM ACTOR
)
UNION ALL
(SELECT first_name FROM customer);

(SELECT first_name FROM ACTOR
)
INTERSECT ALL
(SELECT first_name FROM customer);

(SELECT first_name FROM ACTOR
)
EXCEPT ALL
(SELECT first_name FROM customer);


--Önce isimlerin son 3 karakterine göre sıralama.

--Ardından, son 3 karakter aynıysa, ID'ye göre artan sıralama.

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;