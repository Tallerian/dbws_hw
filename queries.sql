/* QUERY 1 : Check to see if the stations are in the same route. 
Returns a table with all the stations in the common route. */ 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-Vegesack') 
INTERSECT 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-HBF')
ORDER BY sequences;

/* QUERY 2: Returns a list of all the stations for both trains assuming that there are on different routes */
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-Vegesack') 
UNION 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Hannover-HBF')
ORDER BY route_id, sequences;

/* QUERY 3: Extracts the train_id of the route_id that comes from the Station name. This tells us what train
            passes through that station. This query retruns a table with route_id, train_id, and sequences 
            for both trains.  */
SELECT * FROM route WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-Vegesack')
UNION
SELECT * FROM route WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Hannover-HBF');

/* QUERY 4: Returns the train table where the train_id is less than 300. 
            Its a check to see if trains a regional since all RE trains have 
            train_id's of less than 300. */
SELECT * FROM train 
WHERE train_id < 300; 

/* QUERY 5: Returns the common train station if one exists. Returns the name of the common
            train station.  */
SELECT s_name FROM Route_path 
WHERE route_id = 3301
INTERSECT 
SELECT s_name FROM Route_path 
WHERE route_id = 3302 ;
 
 
/* QUERY 6: Returns the Routh_path table ordering them in terms of route_id and then sequences in
            descedning order. Useful for round trips   */
SELECT * FROM Route_path
ORDER BY route_id, sequences DESC;

/* QUERY 7: Shows trains avaiblabe in the each station. Returns a table with train_names and their 
            corresponding station name */
SELECT train_name, s_name
FROM train, Route_path, route
WHERE train.train_id = route.train_id AND route_path.route_id = route.route_id;

/* QUERY 8: Returns a table with the list of possible station_id and station_names where 
            transfers can be made. It tells us the transfer point. */
SELECT * FROM Station 
WHERE s_name = (SELECT s_name FROM Route_path 
                WHERE route_id = 3301
				INTERSECT 
                SELECT s_name FROM Route_path 
                WHERE route_id = 3302); 
                

/* QUERY 9: Returns a table with the information of the origin and destination 
            of the said Passenger */
SELECT departure, destination FROM passenger 
WHERE p_name = "Irfan" ; 

/* QUERY 10: Tells a passenger if he can use 1 train for the entire trip. Showing the train name and passenger name */ 
SELECT train_name, p_name FROM Train, Passenger, Route_path, Route
WHERE Passenger.departure = Route_path.s_name AND Route_path.route_id = Route.route_id AND Route.train_id = Train.train_id
INTERSECT
SELECT train_name, p_name FROM Train, Passenger, Route_path, Route
WHERE Passenger.destination = Route_path.s_name AND Route_path.route_id = Route.route_id AND Route.train_id = Train.train_id;

/* QUERY 11: Returns a table with the station name and station_id of the origin and
            destination of the passneger. Applies when the two station are on the 
            same route. */
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = "Bremen-HBF") 
INTERSECT 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = "Bremen-Vegesack")
INTERSECT 
SELECT * FROM Route_path 
WHERE sequences = (SELECT sequences FROM Route_path WHERE s_name = "Bremen-HBF") OR
	  sequences = (SELECT sequences FROM Route_path WHERE s_name = "Bremen-Vegesack")
ORDER BY sequences;

/* QUERY 12: Returns a table with a list of all intermediary stops from station origin to destination*/
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = "Bremen-Vegesack") AND
      route_id = (SELECT route_id FROM Route_path WHERE s_name = "Bremen-HBF")
      AND
      (
      sequences >= (SELECT sequences FROM Route_path WHERE s_name = "Bremen-Vegesack") AND
	  sequences <= (SELECT sequences FROM Route_path WHERE s_name = "Bremen-HBF")
	  OR 
      sequences <= (SELECT sequences FROM Route_path WHERE s_name = "Bremen-Vegesack") AND
	  sequences >= (SELECT sequences FROM Route_path WHERE s_name = "Bremen-HBF")
      )
ORDER BY sequences;

/* JOIN QUERY 1: Returns a Table with the train_id, train_name, origin, destination and total stops */
SELECT Route.train_id, Route.route_id, Train.train_name, Train.origin, Train.destination, Route.Total_stops
FROM Route
INNER JOIN Train ON Route.train_id=Train.train_id;

/* JOIN QUERY 2: */
SELECT Long_Dist.route_id, Route.train_id, Route.Total_stops, Long_Dist.price
FROM Long_Dist
INNER JOIN Route ON Long_Dist.route_id=Route.route_id;

/*JOIN QUERY 3: */ 
SELECT Regional.route_id, Route.train_id, Route.Total_stops, Regional.price
FROM Regional
INNER JOIN Route ON Regional.route_id=Route.route_id;

/*JOIN QUERY 4: Tells us the train the passengers are on */ 
SELECT p_name, train_name
FROM Train, Route_path, Route
INNER JOIN Passenger ON Passenger.destination = Route_path.s_name AND 
Route_path.route_id = Route.route_id AND Train.train_id = Route.train_id; 


/*GROUP QUERIES*/ 
SELECT train_name, MIN(price) AS "price"
FROM regional
GROUP BY price;

SELECT train_name, MIN(price) AS "price"
FROM long_dist
GROUP BY price;


/* AGGREGATE FUNCTIONS */
/* AGGREGATE FUNCTION 1: */
SELECT COUNT (p_id) AS "Number of Passengers" 
FROM Passenger;

/* AGGREGATE FUNCTION 2: */
SELECT MIN(PRICE) as "Min Price", long_id, train_name, route_id 
FROM Long_dist; 
