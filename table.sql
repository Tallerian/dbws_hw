    CREATE TABLE train (
        train_id INT, 
        train_name VARCHAR(20) UNIQUE, 
        origin VARCHAR,
        destination VARCHAR(20),    
        PRIMARY KEY(train_id)
    );

    CREATE TABLE regional(
        Reg_id INT,
        train_name VARCHAR(20),
        route_id INT,
        price INT,
        PRIMARY KEY(Reg_id),
        FOREIGN KEY(train_name) REFERENCES train(train_name)ON DELETE CASCADE,
        FOREIGN KEY(route_id) REFERENCES route(route_id)
    );

    CREATE TABLE long_Dist(
        long_id INT,
        train_name VARCHAR(20),
        route_id INT,
        price INT,
        PRIMARY KEY(long_id),
        FOREIGN KEY(train_name) REFERENCES train(train_name)ON DELETE CASCADE,
        FOREIGN KEY(route_id) REFERENCES route(route_id)
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
        route_id INT UNIQUE,
        Total_stops INT,
        PRIMARY KEY(route_id),
        FOREIGN KEY (train_id) REFERENCES train(train_id)
    );

    CREATE TABLE station (
        station_id INT, 
        s_name varchar(30) UNIQUE,
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
        PRIMARY KEY(p_id)
    );

    CREATE TABLE student (
        p_id INT, 
        student_id VARCHAR(20),
        FOREIGN KEY(p_id) REFERENCES passenger(p_id)ON DELETE CASCADE
    );

    CREATE TABLE Adult (
        p_id INT,
        adult_id VARCHAR(20),
        FOREIGN KEY(p_id) REFERENCES passenger(p_id)ON DELETE CASCADE
    );

    
    CREATE TABLE school_Student(
        p_id INT, 
        school_disc INT,
        FOREIGN KEY(p_id) REFERENCES passenger(p_id)ON DELETE CASCADE
    );

    CREATE TABLE Uni_Student(
        p_id INT, 
        uni_disc INT,
        FOREIGN KEY(p_id) REFERENCES passenger(p_id)ON DELETE CASCADE
    );


    CREATE TABLE Worker(
        p_id INT, 
        work_disc INT,
        FOREIGN KEY(p_id) REFERENCES passenger(p_id)ON DELETE CASCADE
    );

    CREATE TABLE Retire(
        p_id INT, 
        retire_disc INT,
        FOREIGN KEY(p_id) REFERENCES passenger(p_id)ON DELETE CASCADE
    );