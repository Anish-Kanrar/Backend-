CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE  user(
	id INT,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age >= 13),
    PRIMARY KEY (id)
);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(1, 14, "adam", "adam@ahgoo.in", 123, 245),
(2, 15, "bob", "bob@ahgoo.in", 233, 195),
(3, 16, "casey", "casey@gmail.com", 523, 155),
(4, 17, "donald", "donald@gmail.com", 129, 445);

-- SELECT name,age
--  FROM user
-- WHERE age < 16;

-- SELECT name, age, followers
-- FROM user
-- WHERE age > 16	OR followers > 200;

-- SELECT name, age, followers
-- FROM user
-- WHERE age BETWEEN 14 AND 16;

-- SELECT name, age, email
-- FROM user
-- WHERE age IN (14, 16);

-- SELECT name, age, email
-- FROM user
-- WHERE age NOT IN (14, 16);

-- SELECT name, age, email
-- FROM user
-- WHERE age > 14
-- LIMIT 2;

SELECT name, age, followers
FROM user
ORDER BY followers ASC;

CREATE TABLE Posts(
	id INT PRIMARY KEY,
    content VARCHAR(50),
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES user(id) 
);

-- SELECT * FROM user;
-- SELECT id, age, name FROM user;
