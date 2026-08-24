--use snake_case for table names or other  and use caps for the keywords
DROP TABLE IF EXISTS first_schema.students;

CREATE TABLE first_schema.students (
    --serial is same as the autoincrement in mysql
    id SERIAL PRIMARY KEY,
    name text not null,
    email text not NULL UNIQUE,
    age INT CHECK(age>=18),
    created_at TIMESTAMP DEFAULT NOW()
);

--insert data:INSERT INTO first_schema.students(name,email,age) VALUES('luffy','luffy123@gmail.com',19),('zoro','zoro123@gmail.com',20);

