SELECT

galleries.id as galleries_id,
galleries.name as galleries_name,
ROUND(AVG(images.likes),2) as likes

FROM images

JOIN galleries ON images.gallery_id = galleries.id

GROUP BY
galleries.id,
galleries.name

ORDER BY MAX(images.likes)

;
