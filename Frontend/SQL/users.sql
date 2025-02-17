CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(255),
    birthdate DATE,
    is_active BOOLEAN DEFAULT TRUE,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE
);

INSERT INTO users (name, email, phone_number, address, city, country, birthdate, is_active, username, password_hash) VALUES
('John Doe', 'john.doe@example.com', '555-123-4567', '123 Main St', 'Anytown', 'USA', '1985-05-10', true, 'johndoe', '1521241za'),
('Jane Smith', 'jane.smith@example.com', '555-987-6543', '456 Oak Ave', 'Springfield', 'USA', '1992-11-25', true, 'janesmith', '1521241za'),
('David Lee', 'david.lee@example.com', '555-111-2222', '789 Pine Ln', 'Riverdale', 'USA', '1988-03-15', false, 'davidlee', '1521241za'),
('Sarah Jones', 'sarah.jones@example.com', '555-333-4444', '101 Elm St', 'Hillside', 'USA', '1995-07-01', true, 'sarahj', '1521241za'),
('Michael Brown', 'michael.brown@example.com', '555-555-6666', '222 Maple Dr', 'Lakewood', 'USA', '1990-12-20', false, 'michaelb', '1521241za'),
('Emily Davis', 'emily.davis@example.com', '555-777-8888', '333 Cherry Ct', 'Oceanview', 'USA', '1987-09-05', true, 'emilyd', '1521241za'),
('Robert Wilson', 'robert.wilson@example.com', '555-999-0000', '444 Birch Rd', 'Mountainview', 'USA', '1993-06-18', true, 'robertw', '1521241za'),
('Ashley Garcia', 'ashley.garcia@example.com', '555-222-3333', '555 Willow Pl', 'Valleyview', 'USA', '1989-02-28', false, 'ashleyg', '1521241za'),
('William Rodriguez', 'william.rodriguez@example.com', '555-444-5555', '666 Cedar St', 'Desertview', 'USA', '1991-10-12', true, 'williamr', '1521241za'),
('Elizabeth Martinez', 'elizabeth.martinez@example.com', '555-666-7777', '777 Oak Ave', 'Forestview', 'USA', '1986-04-03', true, 'elizabethm', '1521241za');