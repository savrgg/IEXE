appoint = LOAD '/datasets/appointments.csv' USING PigStorage(',') AS (PatientId:float, AppointmentID:int, Gender:chararray, Age:int, Neighbourhood:chararray, Scholarship:int, illness:chararray, SMS_received:int, scheduled_year:int, scheduled_month:chararray, scheduled_day:int, scheduled_hour:int, scheduled_minute:int, appointment_year:int, appointment_month:chararray, appointment_day:int, appointment_dow:chararray, No_show:chararray);

group_case1 = GROUP appoint BY (No_show, Scholarship);
count_case1 = FOREACH group_case1 GENERATE group, COUNT(appoint);
DUMP count_case1;