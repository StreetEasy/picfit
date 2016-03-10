SELECT CONCAT("/display?op=thumbnail&w=500&h=500&path=", REPLACE(s3_path, '/', '%2F')) AS path
FROM images i
LEFT JOIN visualizations v ON v.original_id = i.id
WHERE v.enabled = true
ORDER BY v.id DESC
LIMIT 1000
OFFSET 0
;

SELECT CONCAT("/display?op=thumbnail&w=50&h=50&path=", REPLACE(s3_path, '/', '%2F')) AS path
FROM images i
LEFT JOIN visualizations v ON v.original_id = i.id
WHERE v.enabled = true
ORDER BY v.id DESC
LIMIT 1000
OFFSET 1000
;

SELECT CONCAT("/display?op=resize&w=600&h=0&path=", REPLACE(s3_path, '/', '%2F')) AS path
FROM images i
LEFT JOIN visualizations v ON v.original_id = i.id
WHERE v.enabled = true
ORDER BY v.id DESC
LIMIT 1000
OFFSET 2000
;

SELECT CONCAT("/display?op=resize&w=0&h=600&path=", REPLACE(s3_path, '/', '%2F')) AS path
FROM images i
LEFT JOIN visualizations v ON v.original_id = i.id
WHERE v.enabled = true
ORDER BY v.id DESC
LIMIT 1000
OFFSET 3000
;
