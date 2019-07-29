select train_details.train_name 
from train_details
left join journey_details
on (train_details.train_id=journey_details.train_id)
group by train_details.train_id,train_details.train_name
having count(distinct(station_id))>=3;