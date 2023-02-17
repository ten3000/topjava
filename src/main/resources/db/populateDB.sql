DELETE FROM user_role;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin'),
       ('Guest', 'guest@gmail.com', 'guest');

INSERT INTO user_role (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (date_time, description, calories, user_id)
VALUES ('2023-02-15 10:00:00', 'Завтрак', 500, 100000),
       ('2023-02-15 13:00:00', 'Обед', 1000, 100000),
       ('2023-02-15 20:00:00', 'Ужин', 500, 100000),
       ('2023-02-16 00:00:00', 'Еда на граничное значение', 100, 100000),
       ('2023-02-16 10:00:00', 'Завтрак', 1000, 100000),
       ('2023-02-16 13:00:00', 'Обед', 500, 100000),
       ('2023-02-16 18:00:00', 'Ужин', 410, 100000);
