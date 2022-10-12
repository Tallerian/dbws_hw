/* Check to see if there are in the same Route Path*/ 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-Vegesack') 
INTERSECT 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-HBF')
ORDER BY sequences;

/* Only runs if the previous one gives you a NIL value */
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-Vegesack') 
UNION 
SELECT * FROM Route_path 
WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Hannover-HBF')
ORDER BY route_id, sequences;

/* Extracting train_id from the given route_id that comes from the s_name */
SELECT * FROM route WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Bremen-Vegesack')
UNION
SELECT * FROM route WHERE route_id = (SELECT route_id FROM Route_path WHERE s_name = 'Hannover-HBF');

/* Check to see if the train is regional*/
SELECT * FROM train 
WHERE train_id < 300; 

/* Returns the common train station if one exists. Route IDs can be made dependent on user input.
    allows us to know transfer points of the trains for the passengers. */
SELECT s_name FROM Route_path 
WHERE route_id = 3301
INTERSECT 
SELECT s_name FROM Route_path 
WHERE route_id = 3302 ;
 
 
/*Gives the route_id with the station in descending order (round trip)   */
SELECT * FROM Route_path
ORDER BY route_id, sequences DESC;

/* Shows trains avaiblabe in the each station */
SELECT train_name, s_name
FROM train, Route_path, route
WHERE train.train_id = route.train_id AND route_path.route_id = route.route_id;

/* Gives you the name and id of the station where the trains intersect  */
SELECT * FROM Station 
WHERE s_name = (SELECT s_name FROM Route_path 
                WHERE route_id = 3301
				INTERSECT 
                SELECT s_name FROM Route_path 
                WHERE route_id = 3302); 
                

/* Ian's query */
SELECT departure, destination FROM passenger 
WHERE p_name = "Irfan" ; 

/* Ian's other query */ 
SELECT train_name. p_name FROM train, passenger
WHERE passenger.departure = route_path.s_name AND route.route_id = route_path.route_id;