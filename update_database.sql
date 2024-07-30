-- Заполнение таблиц данными
INSERT INTO Собаки (имя, команды, дата_рождения) VALUES 
('Рекс', 'Сидеть, Лежать, Апорт', '2020-01-15'),
('Барбос', 'Голос, Дай лапу', '2021-03-20'),
('Шарик', 'Сидеть, Лежать', '2019-11-10');

INSERT INTO Кошки (имя, команды, дата_рождения) VALUES 
('Мурка', 'Кис-кис', '2021-05-05'),
('Барсик', 'Ко мне', '2020-07-12'),
('Пушок', 'Прыжок', '2022-02-01');

INSERT INTO Хомяки (имя, команды, дата_рождения) VALUES 
('Хома', 'Бег в колесе', '2022-09-10'),
('Пушистик', 'Стойка', '2023-01-15');

INSERT INTO Лошади (имя, команды, дата_рождения) VALUES 
('Буцефал', 'Галоп, Рысь', '2019-04-10'),
('Молния', 'Прыжок, Стоп', '2020-08-15');

INSERT INTO Верблюды (имя, команды, дата_рождения) VALUES 
('Гарби', 'Идти, Стоп', '2018-11-03'),
('Сахара', 'Лежать, Вставать', '2019-05-20');

INSERT INTO Ослы (имя, команды, дата_рождения) VALUES 
('Иа', 'Вперед, Стой', '2020-12-12'),
('Упрямец', 'Назад', '2021-07-07');

-- Удаление верблюдов
DELETE FROM Верблюды;

-- Объединение таблиц лошадей и ослов
CREATE TABLE Вьючные_животные_2 AS
SELECT * FROM Лошади
UNION ALL
SELECT * FROM Ослы;

-- Создание таблицы молодых животных
CREATE TABLE Молодые_животные AS
SELECT 'Собака' AS тип_животного, имя, команды, дата_рождения, 
       TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS возраст_в_месяцах
FROM Собаки
WHERE дата_рождения BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION ALL
SELECT 'Кошка' AS тип_животного, имя, команды, дата_рождения, 
       TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS возраст_в_месяцах
FROM Кошки
WHERE дата_рождения BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION ALL
SELECT 'Хомяк' AS тип_животного, имя, команды, дата_рождения, 
       TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS возраст_в_месяцах
FROM Хомяки
WHERE дата_рождения BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION ALL
SELECT 'Лошадь' AS тип_животного, имя, команды, дата_рождения, 
       TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS возраст_в_месяцах
FROM Лошади
WHERE дата_рождения BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION ALL
SELECT 'Осел' AS тип_животного, имя, команды, дата_рождения, 
       TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS возраст_в_месяцах
FROM Ослы
WHERE дата_рождения BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- Объединение всех таблиц
CREATE TABLE Все_животные AS
SELECT 'Собака' AS тип_животного, имя, команды, дата_рождения FROM Собаки
UNION ALL
SELECT 'Кошка' AS тип_животного, имя, команды, дата_рождения FROM Кошки
UNION ALL
SELECT 'Хомяк' AS тип_животного, имя, команды, дата_рождения FROM Хомяки
UNION ALL
SELECT 'Лошадь' AS тип_животного, имя, команды, дата_рождения FROM Лошади
UNION ALL
SELECT 'Осел' AS тип_животного, имя, команды, дата_рождения FROM Ослы;

