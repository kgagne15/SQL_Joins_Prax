--Query 1/ previously had FULL OUTER JOIN from vehicles to owners, changed it after
----looking at solution
SELECT * FROM owners
FULL OUTER JOIN vehicles ON owners.id = vehicles.owners_id; 

--Query 2
SELECT first_name, last_name, COUNT(vehicles.owner_id) FROM vehicles
INNER JOIN owners ON vehicles.owner_id = owners.id
GROUP BY owners.first_name, owners.last_name
ORDER BY owners.first_name;

--Query 3
SELECT first_name, last_name, ROUND(AVG(vehicles.price)), COUNT(vehicles.owner_id) FROM vehicles
INNER JOIN owners ON vehicles.owner_id = owners.id
GROUP BY owners.first_name, owners.last_name
HAVING COUNT(vehicles.owner_id) > 1 AND AVG(vehicles.price) > 10000
ORDER BY owners.first_name DESC;
