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
(1, 14, "adam", "adam@ahgoo.in", 123, 145),
(2, 15, "bob", "bob@ahgoo.in", 233, 145),
(3, 16, "casey", "casey@gmail.com", 523, 145),
(4, 17, "donald", "donald@gmail.com", 129, 145);

SELECT * FROM user
WHERE followers <= 200


CREATE TABLE Posts(
	id INT PRIMARY KEY,
    content VARCHAR(50),
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES user(id) 
);

-- SELECT * FROM user;
SELECT id, age, name FROM user;
