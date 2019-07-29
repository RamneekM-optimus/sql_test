create table journey_details(train_id int foreign key REFERENCES train_details(train_id),station_id int foreign key REFERENCES station_details(station_id),distance int,depature datetime );
