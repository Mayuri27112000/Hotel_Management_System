create database HotelManagementSystem;

use HotelManagementSystem;

CREATE TABLE hotel (
  hotel_id INT PRIMARY KEY,
  hotel_name VARCHAR(50) NOT NULL,
  hotel_email VARCHAR(100) NOT NULL,
  hotel_address VARCHAR(200) NOT NULL
);


CREATE TABLE room (
  room_no INT PRIMARY KEY,
  room_status VARCHAR(20) NOT NULL,
  room_capacity INT NOT NULL,
  hotel_id INT,
  FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);


CREATE TABLE customer (
  cus_id INT PRIMARY KEY,
  cus_name VARCHAR(50) NOT NULL,
  cus_address VARCHAR(200) NOT NULL,
  cus_mobile VARCHAR(20) NOT NULL,
  cus_email VARCHAR(100) NOT NULL
);

CREATE TABLE booking (
  book_id INT PRIMARY KEY,
  book_price DECIMAL(10, 2) NOT NULL,
  book_date DATE NOT NULL,
  cus_id INT,
  room_id INT,
  FOREIGN KEY (cus_id) REFERENCES customer(cus_id),
  FOREIGN KEY (room_id) REFERENCES room(room_no)
);


CREATE TABLE payment (
  pay_id INT PRIMARY KEY,
  pay_amt DECIMAL(10, 2) NOT NULL,
  pay_method VARCHAR(20) NOT NULL,
  pay_date DATE NOT NULL,
  book_id INT,
  FOREIGN KEY (book_id) REFERENCES booking(book_id)
);


CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50) NOT NULL,
  emp_mobile VARCHAR(15) NOT NULL,
  emp_add VARCHAR(100) NOT NULL,
  emp_email VARCHAR(50) NOT NULL,
  hotel_id INT,
  FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE role (
  role_id INT PRIMARY KEY,
  role_name VARCHAR(50) NOT NULL,
  role_desc VARCHAR(200) NOT NULL
);