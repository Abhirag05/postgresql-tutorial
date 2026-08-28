CREATE TABLE first_schema.value_examples(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);


--INSERT INTO first_schema.value_examples(nickname,bio,score)VALUES(null,'learning postgre',10),('','empty nick name',20),('none','',0),('luffy',null,null);

--SELECT * from first_schema.value_examples;

--SELECT * from first_schema.value_examples WHERE nickname IS NULL;

--SELECT * from first_schema.value_examples WHERE nickname = '';

---SELECT * from first_schema.value_examples WHERE score = 0;