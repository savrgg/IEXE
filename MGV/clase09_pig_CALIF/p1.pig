DUMP a;
DESCRIBE b;

--STORE data_processed USING PigStorage(','),INTO 'appointments.csv';

appointments = LOAD 'appointments.csv' USING PigStorage(',')

--appoint = FILTER nombre BY (scholarship==1)
DUMP appointments;