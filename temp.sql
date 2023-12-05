SELECT title,actor.name FROM movie
JOIN casting ON movieid=movie.id
JOIN actor ON actorid=actor.id
WHERE movie.id IN (
   SELECT movie.id
      FROM casting
      JOIN movie ON movieid=movie.id
      JOIN actor ON actorid=actor.id
      WHERE actorid IN (
         SELECT id FROM actor
         WHERE name='Julie Andrews'))
AND ord=1

SELECT title,COUNT(movieid) FROM movie
   JOIN casting ON movie.id = movieid
   WHERE yr = 1978
   GROUP BY movieid
   ORDER BY COUNT(movieid) DESC,title
   
SELECT name FROM actor
   JOIN casting ON actorid=actor.id
   JOIN movie ON movieid=movie.id 
   WHERE movieid IN (
   SELECT movieid 
      FROM casting
      JOIN movie ON movieid=movie.id
      JOIN actor ON actorid=actor.id
      WHERE name = 'Art Garfunkel')
   AND name <> 'Art Garfunkel'