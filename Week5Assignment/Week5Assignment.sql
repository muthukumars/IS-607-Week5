select * from flights where (origin='EWR' or origin='JFK' or origin='LGA') and dest='LAX'
select to_date((to_char(month,'99')||'/'||to_char(day,'99')||'/'||to_char(year,'9999')),'mm/dd/yyyy') from flights  
select TO_CHAR((air_time || ' second')::interval, 'HH24:MI:SS') from flights
select * from planes where tailnum='N10156'


select t1.origin, t1.dest,t1.carrier,t1.flight,t1.dep_delay,t1.arr_delay,to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy'), TO_CHAR((t1.air_time || ' second')::interval, 'HH24:MI:SS'),t2.tailnum,t2.seats from flights t1, planes t2 where (t1.origin='EWR' or t1.origin='JFK' or t1.origin='LGA') and t1.dest='LAX' and to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy') >='02/23/2013' and to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy') <='03/01/2013' and t1.tailnum=t2.tailnum


select TO_CHAR((air_time || ' second')::interval, 'HH24:MI') from flights


select t1.origin as "Origin", t1.dest,t1.carrier,t1.flight,t1.dep_delay,t1.arr_delay,to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy'), TO_CHAR((t1.air_time || ' second')::interval, 'HH24:MI:SS') as "AirTime in Minutes" ,t2.tailnum,t2.seats,t3.temp  
from flights t1, planes t2, weather t3
where (t1.origin='EWR' or t1.origin='JFK' or t1.origin='LGA') 
and t1.dest='LAX' and 
to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy') >='02/23/2013' 
and to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy') <='03/01/2013' 
and t1.tailnum=t2.tailnum
and to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy')=to_date((to_char(t3.month,'99')||'/'||to_char(t3.day,'99')||'/'||to_char(t3.year,'9999')),'mm/dd/yyyy')
and t1.hour=t3.hour

copy(select t1.origin, t1.dest,t1.carrier ,t1.flight,t1.dep_delay,t1.arr_delay,to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy'), TO_CHAR((t1.air_time || ' second')::interval, 'HH24:MI:SS') as "AirTime in Minutes" ,t2.tailnum,t2.seats,t3.temp  
from flights t1, planes t2, weather t3
where (t1.origin='EWR' or t1.origin='JFK' or t1.origin='LGA') 
and t1.dest='LAX' and 
to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy') >='02/23/2013' 
and to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy') <='03/01/2013' 
and t1.tailnum=t2.tailnum
and to_date((to_char(t1.month,'99')||'/'||to_char(t1.day,'99')||'/'||to_char(t1.year,'9999')),'mm/dd/yyyy')=to_date((to_char(t3.month,'99')||'/'||to_char(t3.day,'99')||'/'||to_char(t3.year,'9999')),'mm/dd/yyyy')
and t1.hour=t3.hour) to 'c:\temp\week5Assignment.csv' with CSV
