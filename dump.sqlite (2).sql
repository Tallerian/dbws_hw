	CREATE TABLE train(
		train_id INT, 
		train_name VARCHAR(20), 
		origin VARCHAR(20),
		destination VARCHAR(20), 
		PRIMARY KEY(train_id)
	);

	CREATE TABLE regional(
		Reg_id INT not null REFERENCES train(train_id),
		PRIMARY KEY(Reg_id)
	);

	CREATE TABLE long_Dist(
		Long_id INT not null REFERENCES train(train_id),
		PRIMARY KEY (long_id)
	);

	CREATE TABLE schedule (
		train_id INT,
		sched_id INT,
		departure_time TIME not NULL, 
		arrival_time TIME not NULL,
		PRIMARY KEY(Sched_id),
		FOREIGN KEY (train_id) REFERENCES train
	);

	CREATE TABLE route(
		train_id INT,
		route_id INT,
		Total_stops INT,
		PRIMARY KEY(route_id),
		FOREIGN KEY (train_id) REFERENCES train(train_id)
	);

	CREATE TABLE station (
		station_id INT, 
		s_name VARCHAR(55) UNIQUE,
		PRIMARY KEY(station_id)
	);

	CREATE TABLE route_path (
		route_id INT,
		s_name VARCHAR(55),
		sequences INT,
		FOREIGN KEY (route_id) REFERENCES route(route_id),
		FOREIGN KEY (s_name) REFERENCES station(s_name)
	);


	CREATE TABLE passenger (
		p_id INT, 
		p_name VARCHAR(20), 
		departure VARCHAR(20), 
		destination INT, 
		train_id INT, 
		PRIMARY KEY(p_id)
	);

	CREATE TABLE information(
		station_id INT, 
		train_id INT, 
		route_id INT, 
		FOREIGN KEY (station_id) REFERENCES station(station_id),
		FOREIGN KEY (train_id) REFERENCES train(train_id), 
		FOREIGN KEY (route_id) REFERENCES route(route_id)
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
