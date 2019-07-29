
select train_details.train_name,min(case when schedule_arrival is null and journey_details.distance=0 then station_name end) as boarding,min(case when depature is null   then station_name end) 
from train_details
left join journey_details
on (train_details.train_id=journey_details.train_id)
left join station_details on (journey_details.station_id=station_details.station_id)
group by train_details.train_id, train_details.train_name
;

