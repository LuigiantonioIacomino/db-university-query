Selezionare cognome e nome tutti gli insegnanti, ordinati per cognome e poi per nome in ordine alfabetico

SELECT `name`,cognome 
from teachers
ORDER BY surname, `name` ASC



Selezionare tutti gli insegnamenti (courses) che valgono almeno 12 crediti (cfu) 

SELECT * 
FROM courses 
WHERE cfu >= 12




Selezionare tutti gli studenti nati nel 1990

SELECT * 
FROM students
WHERE YEAR(date)=1990


Da quanti dipartimenti è composta l’università?

SELECT COUNT(*) 
FROM departments





Contare tutti gli insegnanti il cui cognome termina con la “E”

SELECT COUNT(*)
FROM teachers 
WHERE surname LIKE '%E'




Selezionare nome, cognome e codice fiscale di tutti gli studenti iscritti al Corso di Laurea in Economia, in ordine alfabetico

SELECT nome,cognome,codice fiscale 
FROM students s
JOIN degrees d ON s.id=d.department.id
WHERE d.name="Corso di Laurea in Economia"
ORDER BY s.name ASC




Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT * 
FROM degrees s
JOIN department d ON s.department_id=d.id
WHERE name LIKE %Magistrale% 












