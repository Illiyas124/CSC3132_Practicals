CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(50),
    published_year INT,
    available_copies INT DEFAULT 0,
    total_copies INT NOT NULL
);

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT,
    death_year INT NULL
);

CREATE TABLE Book_Authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
);

CREATE TABLE Borrow (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    status ENUM('Borrowed', 'Returned') DEFAULT 'Borrowed',
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);

INSERT INTO Users (name, email, phone) VALUES
('Alice Johnson', 'alice@example.com', '1234567890'),
('Bob Smith', 'bob@example.com', '9876543210'),
('Charlie Brown', 'charlie@example.com', '5556667777');

INSERT INTO Authors (name, birth_year, death_year) VALUES
('J.K. Rowling', 1965, NULL),
('George Orwell', 1903, 1950),
('Jane Austen', 1775, 1817);

INSERT INTO Books (title, genre, published_year, available_copies, total_copies) VALUES
('Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 1997, 3, 3),
('1984', 'Dystopian', 1949, 5, 5),
('Pride and Prejudice', 'Romance', 1813, 2, 2);

INSERT INTO Book_Authors (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Borrow (user_id, book_id, borrow_date, return_date, status) VALUES
(1, 1, '2024-12-01', NULL, 'Borrowed'),
(2, 2, '2024-12-05', '2024-12-15', 'Returned'),
(3, 3, '2024-12-10', NULL, 'Borrowed');
