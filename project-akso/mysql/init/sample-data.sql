-- Create a sample table for additional data
CREATE TABLE IF NOT EXISTS sample_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

-- Insert sample data
INSERT INTO sample_table (name, description)
VALUES 
('Sample Entry 1', 'This is the first sample entry.'),
('Sample Entry 2', 'This is the second sample entry.');

-- Optional: Insert a WordPress post directly into the database
INSERT INTO wp_posts (post_author, post_date, post_content, post_title, post_status, post_type)
VALUES 
(1, NOW(), 'This is a post added directly to the database.', 'Database Post', 'publish', 'post');

