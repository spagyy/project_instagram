SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM comments;
SELECT * FROM likes;

SELECT first_name FROM users;

SELECT first_name, last_name FROM users;

SELECT first_name AS name, last_name AS lname FROM users;

-- Vytahnutí duplikace
SELECT DISTINCT last_name FROM users;

-- razeni

SELECT * FROM users ORDER BY id DESC;

SELECT * FROM users ORDER BY first_name ASC;

-- filtrace
SELECT * FROM users WHERE email LIKE '%a%';
SELECT * FROM users WHERE id = 4;
SELECT * FROM users WHERE id = 2 or id = 3;
SELECT * FROM users WHERE email LIKE '%e%' AND id = 3;

SELECT * FROM users WHERE id !=5;
SELECT * FROM users WHERE email NOT LIKE  '%va%';
SELECT * FROM users WHERE id NOT BETWEEN 2 AND 4;
SELECT * FROM users WHERE id NOT IN (1,2,3);
SELECT * FROM users WHERE (ID NOT IN(1,2,3) AND first_name LIKE 'ma%') OR id = 5;

SELECT * FROM posts WHERE created_by_user_id = 1;
SELECT * FROM posts ORDER BY created_at DESC;
SELECT * FROM posts WHERE description LIKE '%a%';
SELECT * FROM comments WHERE post_id = 1;
SELECT * FROM comments WHERE created_by_user_id = 3;

SELECT * FROM likes WHERE post_id = 1;
SELECT * FROM likes WHERE created_by_user_id = 1;

SELECT COUNT(*) AS users_count FROM users;
SELECT COUNT(*) AS posts_count FROM posts;
SELECT COUNT(*) AS comments_count FROM comments;
SELECT COUNT(*) AS likes_count FROM likes;



