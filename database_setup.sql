CREATE DATABASE IF NOT EXISTS Друзья_человека;
USE Друзья_человека;

CREATE TABLE IF NOT EXISTS Животные (
    id INT AUTO_INCREMENT PRIMARY KEY,
    вид VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Домашние_животные (
    id INT AUTO_INCREMENT PRIMARY KEY,
    вид VARCHAR(50),
    FOREIGN KEY (id) REFERENCES Животные(id)
);

CREATE TABLE IF NOT EXISTS Вьючные_животные (
    id INT AUTO_INCREMENT PRIMARY KEY,
    вид VARCHAR(50),
    FOREIGN KEY (id) REFERENCES Животные(id)
);

CREATE TABLE IF NOT EXISTS Собаки (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(50),
    команды VARCHAR(200),
    дата_рождения DATE,
    FOREIGN KEY (id) REFERENCES Домашние_животные(id)
);

CREATE TABLE IF NOT EXISTS Кошки (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(50),
    команды VARCHAR(200),
    дата_рождения DATE,
    FOREIGN KEY (id) REFERENCES Домашние_животные(id)
);

CREATE TABLE IF NOT EXISTS Хомяки (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(50),
    команды VARCHAR(200),
    дата_рождения DATE,
    FOREIGN KEY (id) REFERENCES Домашние_животные(id)
);

CREATE TABLE IF NOT EXISTS Лошади (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(50),
    команды VARCHAR(200),
    дата_рождения DATE,
    FOREIGN KEY (id) REFERENCES Вьючные_животные(id)
);

CREATE TABLE IF NOT EXISTS Верблюды (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(50),
    команды VARCHAR(200),
    дата_рождения DATE,
    FOREIGN KEY (id) REFERENCES Вьючные_животные(id)
);

CREATE TABLE IF NOT EXISTS Ослы (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(50),
    команды VARCHAR(200),
    дата_рождения DATE,
    FOREIGN KEY (id) REFERENCES Вьючные_животные(id)
);

-- Заполнение таблицы Животные
INSERT INTO Животные (вид) VALUES 
('Собака'), ('Кошка'), ('Хомяк'), ('Лошадь'), ('Верблюд'), ('Осел');

-- Заполнение таблицы Домашние_животные
INSERT INTO Домашние_животные (вид) VALUES 
('Собака'), ('Кошка'), ('Хомяк');

-- Заполнение таблицы Вьючные_животные
INSERT INTO Вьючные_животные (вид) VALUES 
('Лошадь'), ('Верблюд'), ('Осел');

-- Заполнение таблицы Собаки
INSERT INTO Собаки (имя, команды, дата_рождения) VALUES 
('Рекс', 'Сидеть, Лежать', '2020-01-01'),
('Барон', 'Голос, Апорт', '2021-06-15'),
('Шарик', 'Дай лапу, Место', '2019-03-10');

-- Заполнение таблицы Кошки
INSERT INTO Кошки (имя, команды, дата_рождения) VALUES 
('Мурка', 'Кис-кис', '2019-05-05'),
('Барсик', 'Прыжок', '2020-07-20'),
('Пушок', 'Ко мне', '2021-02-01');

-- Заполнение таблицы Хомяки
INSERT INTO Хомяки (имя, команды, дата_рождения) VALUES 
('Хома', 'Бег в колесе', '2022-01-10'),
('Пушистик', 'Стойка', '2022-03-15'),
('Шустрик', 'Прыжок на руку', '2021-11-20');

-- Заполнение таблицы Лошади
INSERT INTO Лошади (имя, команды, дата_рождения) VALUES 
('Буцефал', 'Галоп, Рысь', '2018-04-10'),
('Пегас', 'Прыжок, Стоп', '2019-08-15'),
('Молния', 'Шаг, Поворот', '2017-12-01');

-- Заполнение таблицы Верблюды
INSERT INTO Верблюды (имя, команды, дата_рождения) VALUES 
('Гарби', 'Встать, Лечь', '2016-07-15'),
('Сахара', 'Идти, Стоп', '2018-03-20'),
('Дюна', 'Поворот, Стоять', '2017-11-05');

-- Заполнение таблицы Ослы
INSERT INTO Ослы (имя, команды, дата_рождения) VALUES 
('Иа', 'Вперед, Стоп', '2019-09-18'),
('Упрямец', 'Назад, Стоять', '2020-02-25'),
('Серый', 'Поворот, Ждать', '2018-07-12');


