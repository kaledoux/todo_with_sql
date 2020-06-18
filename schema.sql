-- create table for lists
CREATE TABLE lists(
  id serial PRIMARY KEY,
  name varchar(100) UNIQUE NOT NULL
);

-- create table for todos
CREATE TABLE todos(
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  completed boolean NOT NULL DEFAULT false,
  list_id integer NOT NULL REFERENCES lists(id)
);
