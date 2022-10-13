CREATE TABLE train (
    train_id INT, 
    train_name VARCHAR(20), 
    origin INT,
    destination varchar(20), 
  	PRIMARY KEY(train_id)
);


CREATE TABLE regional(
	Reg_id INT not null REFERENCES train(t_id),
	PRIMARY KEY(Reg_id)
);

CREATE TABLE long_Dist(
	Long_id INT not null REFERENCES train(t_id),
	PRIMARY KEY (long_id)
);


CREATE TABLE station (
    station_id INT, 
    s_name varchar(20),
  	PRIMARY KEY(station_id)
);

CREATE TABLE passenger (
    p_id INT, 
    p_name VARCHAR(20), 
    start INT, 
    destination INT, 
    train_id INT, 
  	PRIMARY KEY(p_id)
);

CREATE TABLE schedule (
    sched_id INT,
    departure_time DECIMAL(2,2), 
  	PRIMARY KEY(Sched_id)
);

CREATE TABLE route(
	route_id INT,
  	Total_stops INT,
  	PRIMARY KEY(Route_id)
);

CREATE TABLE student (
	student_id VARCHAR(20) UNIQUE,
  	p_id INT not null REFERENCES passenger(p_id)
);

CREATE TABLE school_Student(
	sch_price INT,
  	sch_std_id VARCHAR(20) not null REFERENCES student(student_id)
);

CREATE TABLE Uni_Student(
	uni_price INT,
  	Uni_std_id VARCHAR(20) not null REFERENCES student(student_id)
);

CREATE TABLE Adult (
	adult_id VARCHAR(20) UNIQUE,
  	p_id INT not null REFERENCES passenger(p_id)
);

CREATE TABLE Worker(
	w_price INT,
  	W_id VARCHAR(20) NOT null REFERENCES Adult(adult_id)
);

CREATE TABLE Retire(
	r_price INT,
  	r_id VARCHAR(20) NOT null REFERENCES Adult(adult_id)
);


CREATE TABLE Travels_by(
	p_id INT,
  	train_id INT,
  	FOREIGN KEY (p_id) REFERENCES passenger(p_id),
  	FOREIGN KEY (train_id) REFERENCES train(train_id)
);

CREATE TABLE Follows(
  	Sched_id INT,
	  train_id INT,
  	station_id INT,
  	FOREIGN KEY (train_id) REFERENCES train(train_id),
  	FOREIGN KEY (Sched_id) REFERENCES schedule(Sched_id),
  	FOREIGN KEY (station_id) REFERENCES station(station_id)
);

CREATE TABLE consist_of(
	sched_id INT,
  	Route_id INT,
  	FOREIGN KEY (sched_id) REFERENCES schedule(sched_id),
 	FOREIGN KEY (Route_id) REFERENCES route(Route_id)
);

CREATE TABLE Terminals(
	Route_id INT,
  	station_id INT,
  	FOREIGN KEY (station_id) REFERENCES station(station_id),
 	FOREIGN KEY (Route_id) REFERENCES route(Route_id)
);
