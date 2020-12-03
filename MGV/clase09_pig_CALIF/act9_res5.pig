appoint = LOAD '/datasets/appointments.csv' USING PigStorage(',') AS (PatientId:float, AppointmentID:int, Gender:chararray, Age:int, Neighbourhood:chararray, Scholarship:int, illness:chararray, SMS_received:int, scheduled_year:int, scheduled_month:chararray, scheduled_day:int, scheduled_hour:int, scheduled_minute:int, appointment_year:int, appointment_month:chararray, appointment_day:int, appointment_dow:chararray, No_show:chararray);

filter_yes_assist = FILTER appoint BY (No_show  == 'Yes');
group_yes_assist = GROUP filter_yes_assist BY No_show;
avg_yes_assist = FOREACH group_yes_assist GENERATE AVG(filter_yes_assist.Age);
DUMP avg_yes_assist;

filter_no_assist = FILTER appoint BY (No_show  == 'No');
group_no_assist= GROUP filter_no_assist BY No_show;
avg_no_assist= FOREACH group_no_assist GENERATE AVG(filter_no_assist.Age);
DUMP avg_no_assist;