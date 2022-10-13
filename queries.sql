/* QUERY 1 : Check to see if the stations are in the same route. 
Returns a table with all the stations in the common route. */ 
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = 'Bremen-Vegesack') 
INTERSECT 
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = 'Bremen-HBF')
ORDER BY sequences;

/* QUERY 2: Returns a list of all the stations for both trains assuming that there are on different routes */
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = 'Bremen-Vegesack') 
UNION 
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = 'Hannover-HBF')
ORDER BY route_id, sequences;

/* QUERY 3: Extracts the train_id of the route_id that comes from the Station name. This tells us what train
            passes through that station. This query retruns a table with route_id, train_id, and sequences 
            for both trains.  */
SELECT * FROM route WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = 'Bremen-Vegesack')
UNION
SELECT * FROM route WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = 'Hannover-HBF');

/* QUERY 4: Returns the train table where the train_id is less than 300. 
            Its a check to see if trains a regional since all RE trains have 
            train_id's of less than 300. */
SELECT * FROM train 
WHERE train_id < 300; 

/* QUERY 5: Returns the common train station if one exists. Returns the name of the common
            train station.  */
SELECT s_name FROM route_path 
WHERE route_id = 3301
INTERSECT 
SELECT s_name FROM route_path 
WHERE route_id = 3302 ;
 
 
/* QUERY 6: Returns the Routh_path table ordering them in terms of route_id and then sequences in
            descedning order. Useful for round trips   */
SELECT * FROM route_path
ORDER BY route_id, sequences DESC;

/* QUERY 7: Shows trains avaiblabe in the each station. Returns a table with train_names and their 
            corresponding station name */
SELECT train_name, s_name
FROM train, route_path, route
WHERE train.train_id = route.train_id AND route_path.route_id = route.route_id;

/* QUERY 8: Returns a table with the list of possible station_id and station_names where 
            transfers can be made. It tells us the transfer point. */
SELECT * FROM station 
WHERE s_name = (SELECT s_name FROM route_path 
                WHERE route_id = 3301
				INTERSECT 
                SELECT s_name FROM route_path 
                WHERE route_id = 3302); 
                

/* QUERY 9: Returns a table with the information of the origin and destination 
            of the said passenger */
SELECT departure, destination FROM passenger 
WHERE p_name = "Irfan" ; 

/* QUERY 10: Tells a passenger if he can use 1 train for the entire trip. Showing the train name and passenger name */ 
SELECT train_name, p_name FROM train, passenger, route_path, route
WHERE passenger.departure = route_path.s_name AND route_path.route_id = route.route_id AND route.train_id = train.train_id
INTERSECT
SELECT train_name, p_name FROM train, passenger, route_path, route
WHERE passenger.destination = route_path.s_name AND route_path.route_id = route.route_id AND route.train_id = train.train_id;

/* QUERY 11: Returns a table with the station name and station_id of the origin and
            destination of the passneger. Applies when the two station are on the 
            same route. */
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = "Bremen-HBF") 
INTERSECT 
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = "Bremen-Vegesack")
INTERSECT 
SELECT * FROM route_path 
WHERE sequences IN (SELECT sequences FROM route_path WHERE s_name = "Bremen-HBF") OR
	  sequences IN (SELECT sequences FROM route_path WHERE s_name = "Bremen-Vegesack")
ORDER BY sequences;

/* QUERY 12: Returns a table with a list of all intermediary stops from station origin to destination*/
SELECT * FROM route_path 
WHERE route_id IN (SELECT route_id FROM route_path WHERE s_name = "Bremen-Vegesack") AND
      route_id IN (SELECT route_id FROM route_path WHERE s_name = "Bremen-HBF")
INTERSECT 
SELECT * FROM route_path
WHERE sequences IN ( SELECT sequences FROM route_path WHERE s_name = "Bremen-Vegesack") 
AND 
 sequences IN ( SELECT sequences FROM route_path WHERE s_name = "Bremen-HBF")
ORDER BY sequences;

/*
      (
      sequences >= (SELECT sequences FROM route_path WHERE s_name = "Bremen-Vegesack") AND
	  sequences <= (SELECT sequences FROM route_path WHERE s_name = "Bremen-HBF")
	  OR 
      sequences <= (SELECT sequences FROM route_path WHERE s_name = "Bremen-Vegesack") AND
	  sequences >= (SELECT sequences FROM Route_path WHERE s_name = "Bremen-HBF")
      )
ORDER BY sequences; */



/* JOIN QUERY 1: Returns a Table with the train_id, train_name, origin, destination and total stops */
SELECT route.train_id, route.route_id, train.train_name, train.origin, train.destination, route.Total_stops
FROM route
INNER JOIN train ON route.train_id=train.train_id;

/* JOIN QUERY 2: */
SELECT long_Dist.route_id, route.train_id, route.Total_stops, long_Dist.price
FROM long_Dist
INNER JOIN route ON long_Dist.route_id=route.route_id;

/*JOIN QUERY 3: */ 
SELECT regional.route_id, route.train_id, route.Total_stops, regional.price
FROM regional
INNER JOIN route ON regional.route_id=route.route_id;

/*JOIN QUERY 4: Tells us the train the passengers are on */ 
SELECT p_name, train_name
FROM train, route_path, route
INNER JOIN passenger ON passenger.destination = route_path.s_name AND 
route_path.route_id = route.route_id AND train.train_id = route.train_id; 


/*GROUP QUERIES*/ 
SELECT * FROM regional
GROUP BY price DESC;

SELECT * FROM long_Dist
GROUP BY price ASC;


/* AGGREGATE FUNCTIONS */
/* AGGREGATE FUNCTION 1: Gives us the total number of Passengers */
SELECT COUNT(p_id) AS "Number of Passengers" 
FROM passenger;

/* AGGREGATE FUNCTION 2: Gives us the lowest cost ICE train */
SELECT MIN(PRICE) as "Min Price", long_id, train_name, route_id 
FROM long_Dist; 
