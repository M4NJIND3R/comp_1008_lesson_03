-- This is a SQL comment
-- Create our Lesson 03 DB (if it dosent exist)
create database if not exists comp_1006_lesson_03; 
use comp_1006_lesson_03;

-- Create the Countries table
create table if not exists countries (
	id int (11) not null auto_increment,
    name varchar(100) not null,
    description varchar(2000) null,
    population int(15) not null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp on update current_timestamp,
    primary key (id)
);