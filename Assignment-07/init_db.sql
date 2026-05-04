CREATE DATABASE IF NOT EXISTS ebookshop;
USE ebookshop;

CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(255) NOT NULL,
    book_author VARCHAR(255) NOT NULL,
    book_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO books (book_title, book_author, book_price, quantity) VALUES
('Java Programming', 'John Doe', 45.50, 10),
('Web Technologies', 'Jane Smith', 35.00, 20),
('Database Systems', 'Alice Johnson', 50.00, 15),
('Data Structures', 'Bob Brown', 40.00, 12);
