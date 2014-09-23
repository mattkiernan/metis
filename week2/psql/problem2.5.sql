SELECT

images.gallery_id
FROM images
JOIN galleries ON images.gallery_id = galleries.id

GROUP BY images.gallery_id
ORDER BY COUNT(images.id) DESC

LIMIT 1
;
