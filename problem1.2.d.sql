select train_details.train_id,train_details.train_name
from train_details
inner join journey_details
on (train_details.train_id=journey_details.train_id)
inner join station_details on (journey_details.station_id=station_details.station_id)
where journey_details.station_id  in (select station_details.station_id from station_details inner join journey_details on station_details.station_id=journey_details.station_id where station_name not in ('Aligarh','kanpur') )
group by train_details.train_id,train_details.trin_name
;