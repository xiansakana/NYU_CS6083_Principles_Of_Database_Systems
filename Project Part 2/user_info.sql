CREATE TABLE user ( 
    email     VARCHAR(50) NOT NULL COMMENT 'user email', 
    password  VARCHAR(30) NOT NULL COMMENT 'user password'
);

CREATE TABLE admin ( 
    id     VARCHAR(50) NOT NULL COMMENT 'admin id', 
    password  VARCHAR(30) NOT NULL COMMENT 'admin password'
);

INSERT INTO admin (id, password) VALUES ('root', 'password');

