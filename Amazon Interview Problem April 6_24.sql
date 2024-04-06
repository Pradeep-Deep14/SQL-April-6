CREATE table tb1(n int,m int);
insert into tb1
values (1,2),(2,3),(3,4),(2,1),(3,2),(5,6);


select * from tb1

--Remove all the reversed pair from the given table--

--n m next_n--

WITH CTE AS
(
SELECT *, LEAD(n,1)OVER(ORDER by n,m)as next_n
FROM tb1)
SELECT n,m FROM CTE 
where m<>next_n or next_n is NULL