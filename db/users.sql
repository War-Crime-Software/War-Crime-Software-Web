CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Beispiel: Benutzer hinzufügen
INSERT INTO users (username, email, password_hash) 
VALUES ('user1', 'user1@example.com', 'hashed_password_here');

-- Alle Benutzer abrufen
SELECT * FROM users;

-- Benutzer anhand der ID abrufen
SELECT * FROM users WHERE id = 1;

-- Benutzer aktualisieren
UPDATE users SET email = 'newemail@example.com' WHERE id = 1;

-- Benutzer löschen
DELETE FROM users WHERE id = 1;