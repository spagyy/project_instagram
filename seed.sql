INSERT INTO users (first_name, last_name, nick_name, email, password, created_at)
VALUES
    ('Jan', 'Novák', 'jan_novak', 'jan.novak92@example.com', 'J7k!pQ2v#x9', '2026-01-12 14:25:00'),
    ('Petr', 'Svoboda', 'petr_s', 'petr.svoboda17@example.com', 'R4m@zT8n!w3', '2026-02-03 09:15:00'),
    ('Anna', 'Dvořáková', 'anna_d', 'anna.dvorakova@example.com', 'L9v#bK5s@p1', '2026-03-21 18:40:00'),
    ('Tereza', 'Černá', 'tereza_c', 'tereza.cerna@example.com', 'M2x!hN7q$e6', '2026-04-08 11:30:00'),
    ('Martin', 'Procházka', 'martin_pro', 'martin.prochazka@example.com', 'F8w@cR3y!k5', '2026-05-19 16:05:00');

INSERT INTO posts
(created_by_user_id, image_url, description, created_at)
VALUES
    (1, 'images/beach.jpg', 'Summer vibe', '2026-06-15 14:30:00'),
    (2, 'images/car.jpg', 'My new ratatatta', '2026-07-02 10:15:00'),
    (3, 'images/cafe.jpg', 'Coffee time at starbucks ', '2026-08-10 09:45:00'),
    (4, 'images/sunset.pdf', 'Beautiful view of streets ', '2026-09-21 18:20:00'),
    (5, 'images/friends.jpg', 'Best day with fake friends ', '2026-10-05 16:00:00'),
    (1, 'images/mountains.jpg', 'Weekend in the home ', '2026-11-12 12:10:00');

INSERT INTO comments (post_id, created_by_user_id, context, created_at)
VALUES
    (1, 2, 'bobka koci', '2026-06-15 15:00:00'),
    (1, 3, 'mega hezky', '2026-06-15 15:10:00'),
    (2, 1, 'natunigovana karka', '2026-07-02 11:20:00'),
    (3, 4, 'a ty na koho stekas?', '2026-08-10 10:00:00'),
    (4, 5, 'rtatataat', '2026-09-21 19:00:00'),
    (5, 1, 'a my se ja okurujeme alebo čo?', '2026-10-05 17:30:00'),
    (6, 3, 'hezu pár', '2026-11-12 13:00:00');

INSERT INTO likes (post_id, created_by_user_id, created_at)
VALUES
    (1, 2, '2026-06-15 14:40:30'),
    (1, 3, '2026-06-15 14:45:03'),
    (1, 4, '2026-06-15 14:50:20'),
    (2, 1, '2026-07-02 10:30:01'),
    (2, 3, '2026-07-02 10:35:10'),
    (3, 2, '2026-08-10 09:50:06'),
    (4, 1, '2026-09-21 18:30:50'),
    (5, 2, '2026-10-05 16:20:40'),
    (6, 4, '2026-11-12 12:30:09');