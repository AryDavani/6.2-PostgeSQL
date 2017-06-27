-- create table

CREATE TABLE "todos" (
"id" serial PRIMARY KEY,
"title" varchar(255) NOT NULL,
"details" text,
"priority" int default 1 NOT NULL,
"created_at" date NOT NULL,
"completed_at" timestamp
);

-- insert five todos into TABLE

INSERT INTO todos (title, priority, created_at)
VALUES ('wash car', 3, '2017-06-05 03:05:03'), ('eat', 1, '2017-06-25 03:39:03'), ('sleep', 2, '2017-07-15 03:39:08'), ('learn postgresql', 2, '2017-06-05 03:39:08');

INSERT INTO todos (title, priority, created_at, completed_at)
VALUES ('eat breakfast', 1, '2017-06-27 03:40:25', '2017-06-27 08:00:00');

-- find all incomplete todos

SELECT *
FROM todos
WHERE completed_at ISNULL;

-- find all todos with priority above 1

SELECT *
FROM todos
WHERE priority > 1;

-- complete one todo by its id

UPDATE todos
SET completed_at = '2017-06-27 04:05:00'
WHERE id = 4;

-- delete all completed todos

DELETE FROM todos
WHERE completed_at NOTNULL;
