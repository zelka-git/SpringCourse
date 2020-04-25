DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS tasks CASCADE;

CREATE TABLE users
(
    id          BIGINT    NOT NULL,
    first_name  text      NULL,
    last_name   text      NULL,
    login       text      NOT NULL,
    password    text      NOT NULL
);
ALTER TABLE users ADD CONSTRAINT users_pkey PRIMARY KEY (id);

CREATE TABLE tasks
(
    id          BIGINT    NOT NULL,
    title       text      NOT NULL,
    done        boolean   NOT NULL,
    user_id     BIGINT    NOT NULL
);
ALTER TABLE tasks ADD CONSTRAINT boards_pkey PRIMARY KEY (id);
ALTER TABLE tasks ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id);