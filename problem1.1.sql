select train_details.train_name,sum(distance)/abs(datediff(hour,max(schedule_arrival),min(depature)))
from train_details
inner join journey_details
on (train_details.train_id=journey_details.train_id)
inner join station_details on (journey_details.station_id=station_details.station_id)
group by train_details.train_id,train_details.train_name
;