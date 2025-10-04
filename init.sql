-- Drop old tables if exist
DROP TABLE IF EXISTS admins;
DROP TABLE IF EXISTS events;

-- Admins table
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Events table
CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    date DATE NOT NULL,
    venue VARCHAR(150) NOT NULL,
    coordinator VARCHAR(100) NOT NULL,
    description TEXT,
    status ENUM('planned','ongoing','completed') DEFAULT 'planned'
);

-- Insert default admin (username: admin | password: admin123)
INSERT INTO admins (username, password) VALUES
('admin', '$2y$10$QNd4FcH93NQEy8irHvcxM.h57E3k0lyRhmbw5a3MRTsyfyWJO9h9O');

-- Insert sample events
INSERT INTO events (title, date, venue, coordinator, description, status) VALUES
('Tech Meetup', '2025-09-10', 'Auditorium A', 'Rabia Naeem', 'Networking event for developers.', 'planned'),
('AI Workshop', '2025-09-15', 'Lab 3', 'Dr. Ahsan', 'Hands-on workshop on AI tools.', 'ongoing'),
('Cultural Fest', '2025-09-20', 'Main Ground', 'Hina Malik', 'Annual university cultural festival.', 'planned'),
('Hackathon', '2025-09-25', 'Innovation Center', 'IEEE Team', '24-hour coding competition.', 'planned'),
('Project Expo', '2025-08-15', 'Hall B', 'Ali Raza', 'Exhibition of final year projects.', 'completed');
CREATE TABLE contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
