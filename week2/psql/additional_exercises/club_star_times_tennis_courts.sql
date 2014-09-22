SELECT

bookings.starttime,
facilities.name

FROM cd.bookings
JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid

WHERE bookings.starttime >= '2012-09-21'
AND bookings.starttime < '2012-09-22'
AND facilities.name ILIKE '%tennis court%'

ORDER BY bookings.starttime ASC

;


