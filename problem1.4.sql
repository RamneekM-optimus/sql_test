select train_name,delhi, Aligarh, lucknow, kanpur
from
(
  select train_name,station_name,datediff(hour,max(schedule_arrival),min(depature)) as date1
  from station_details
  inner join journey_details
  on (journey_details.station_id=station_details.station_id)
  inner join train_details
  on (train_details.train_id=journey_details.train_id)
  group by train_name,station_name
) d
pivot
(
  sum(date1)
  for station_name in (delhi, Aligarh, lucknow, kanpur,())
) piv;