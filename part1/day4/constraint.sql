
--NOT NULL,UNIQUE,DEFAULT,CHECK

CREATE TABLE first_schema.accounts(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK (age>=18),
    created_at TIMESTAMP DEFAULT NOW()
);


--INSERT INTO first_schema.accounts(full_name,email,age)VALUES('none','none123@gmail.com',11);