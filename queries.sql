-- write your queries here

SELECT * FROM owners
FULL JOIN vehicles
ON owners.id = vehicles.owner_id;

SELECT owners.first_name, owners.last_name, COUNT(owners.id) AS count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
ORDER BY owners.first_name;

SELECT owners.first_name, owners.last_name, ROUND(AVG(vehicles.price)) AS average_price, COUNT(owners.id) AS count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
HAVING AVG(vehicles.price) > 10000 AND COUNT(owners.id) > 1
ORDER BY count DESC;

-- GROUP BY owners.owner_id;
