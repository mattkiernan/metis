SELECT

firstname,
surname,
joindate

FROM cd.members

GROUP BY
firstname,
surname,
joindate

ORDER BY MAX(joindate) DESC

LIMIT 1

;
