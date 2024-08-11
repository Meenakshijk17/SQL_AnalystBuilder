/*
https://www.analystbuilder.com/questions/media-addicts-deISZ?r=Ji7KH4dU3mCPYxJMKz0DKVF0h

Social Media Addiction can be a crippling disease affecting millions every year.

We need to identify people who may fall into that category.

Write a query to find the people who spent a higher than average amount of time on social media.

Provide just their first names alphabetically so we can reach out to them individually.

user_time
Field	Data Type
user_id	int
media_time_minutes	int

users
Field	Data Type
user_id	int
first_name	text
*/

SELECT 
    u.first_name
FROM 
    user_time ut
LEFT JOIN
    users u
ON 
    ut.user_id = u.user_id
WHERE
    ut.media_time_minutes > (SELECT AVG(media_time_minutes) FROM user_time)
ORDER BY
    u.first_name
;
