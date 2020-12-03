appoint = LOAD '/datasets/appointments.csv' USING PigStorage(',') AS (PatientId:float, AppointmentID:int, Gender:chararray, Age:int, Neighbourhood:chararray, Scholarship:int, illness:chararray, SMS_received:int, scheduled_year:int, scheduled_month:chararray, scheduled_day:int, scheduled_hour:int, scheduled_minute:int, appointment_year:int, appointment_month:chararray, appointment_day:int, appointment_dow:chararray, No_show:chararray);

filter_appoint = FILTER appoint BY (AppointmentID > 0);
group_padecimiento = GROUP filter_appoint BY illness;
count_padecimiento = FOREACH group_padecimiento GENERATE group, COUNT(filter_appoint);
DUMP count_padecimiento;