USE universitiesDB;
show tables;
#Item A
SELECT COUNT(*) AS total_paises FROM country;

#Item B
SELECT system_name from ranking_system;



#Item C
SELECT COUNT(*) AS total_universidades FROM university;

#Item D
SELECT avg(student_staff_ratio) as media from university_year;