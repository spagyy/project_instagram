CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(65) NOT NULL,
    last_name VARCHAR(65) NOT NULL,
    nick_name VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(254) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL,
    created_at DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_by_user_id INT NOT NULL ,
    image_url VARCHAR(255) NOT NULL,
    description TEXT,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (created_by_user_id)
                                 REFERENCES users(id)
                                 ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT NOT NULL,
    created_by_user_id INT NOT NULL,
    context TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (post_id)
                                    REFERENCES posts(id)
                                    ON DELETE CASCADE,

    FOREIGN KEY (created_by_user_id)
                                    REFERENCES users(id)
                                    ON DELETE CASCADE,
);

CREATE TABLE IF NOT EXISTS likes (

);