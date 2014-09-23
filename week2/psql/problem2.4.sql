SELECT

galleries.id as gallery_id,
COUNT(images.id) as image_count

FROM images

JOIN galleries ON images.gallery_id = galleries.id

WHERE images.description ILIKE '%sushi%'

GROUP BY
galleries.id

;
