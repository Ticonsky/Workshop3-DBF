-- Crear la base de datos YouTubeDB
CREATE DATABASE IF NOT EXISTS YouTubeDB;

-- Usar la base de datos YouTubeDB
USE YouTubeDB;

-- Crear la tabla Video
CREATE TABLE IF NOT EXISTS Video (
    VideoID INT PRIMARY KEY,
    Title TEXT,
    Views INT,
    Likes INT,
    Dislikes INT,
    ChannelID INT,
    FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID)
);

-- Crear la tabla Channel
CREATE TABLE IF NOT EXISTS Channel (
    ChannelID INT PRIMARY KEY,
    Name TEXT,
    Subscribers INT,
    Country TEXT
);

-- Crear la tabla Playlist
CREATE TABLE IF NOT EXISTS Playlist (
    PlaylistID INT PRIMARY KEY,
    Name TEXT,
    Owner TEXT,
    Videos TEXT, -- Considera cambiar este campo si necesitas almacenar más de un VideoID
    ChannelID INT,
    FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID)
);

-- Crear la tabla User
CREATE TABLE IF NOT EXISTS User (
    UserID INT PRIMARY KEY,
    Name TEXT,
    Alias TEXT,
    Password TEXT
);

-- Crear la tabla Subscription
CREATE TABLE IF NOT EXISTS Subscription (
    UserID INT,
    ChannelID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID),
    PRIMARY KEY (UserID, ChannelID)
);
