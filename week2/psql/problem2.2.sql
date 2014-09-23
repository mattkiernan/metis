SELECT

galleries.id as gallery_id,
MIN(images.id) as image_id

FROM galleries

JOIN images ON galleries.id = images.gallery_id

GROUP BY 
galleries.id
;
