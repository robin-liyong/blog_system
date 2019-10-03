CREATE TABLE IF NOT EXISTS articles(
id integer primary key,
title TEXT,
author TEXT,
tag TEXT,
time TEXT,
content TEXT,
link TEXT,
description TEXT);

CREATE TABLE IF NOT EXISTS comments(
id integer primary key,
path TEXT,
time TEXT,
author TEXT,
content TEXT);

CREATE TABLE IF NOT EXISTS users(
id integer primary key,
name TEXT UNIQUE,
password TEXT,
level integer);

CREATE TABLE IF NOT EXISTS messages(
id integer primary key,
source TEXT,
content TEXT,
state integer,
time TEXT);

INSERT into users (name, password, level)
SELECT "root", "toor", 0
WHERE not exists( SELECT 1 from users WHERE level = 0);