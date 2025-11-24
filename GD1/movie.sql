USE [master];
GO

CREATE DATABASE [movies] ON
( FILENAME = N'/var/opt/mssql/data/movies.mdf' ),
( FILENAME = N'/var/opt/mssql/data/movies_log.ldf' )
FOR ATTACH;
GO


/*use master;
DROP DATABASE movies;

CREATE DATABASE movies;
GO

USE movies;
GO

-- Bảng Users
CREATE TABLE Users (
    id VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    fullname VARCHAR(255),
    photo VARCHAR(255),
    admin BIT DEFAULT 0
);

-- Bảng Videos
CREATE TABLE Videos (
    id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    poster VARCHAR(255),
    duration VARCHAR(50),
    releasedDate DATE,
    genre VARCHAR(100),
    country VARCHAR(100),
    imdb FLOAT,
    description TEXT,
    link VARCHAR(255),
    views INT DEFAULT 0,
    active BIT DEFAULT 1,
    production VARCHAR(255),
    trending BIT DEFAULT 0,
    likes INT DEFAULT 0,
    dislikes INT DEFAULT 0
);

-- Bảng Share
CREATE TABLE Share (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    userId VARCHAR(50),
    videoId VARCHAR(50),
    email VARCHAR(255),
    shareDate DATETIME,
    CONSTRAINT FK_Share_User FOREIGN KEY (userId) REFERENCES Users(id),
    CONSTRAINT FK_Share_Video FOREIGN KEY (videoId) REFERENCES Videos(id)
);

-- Bảng Favorite
CREATE TABLE Favorite (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    userId VARCHAR(50),
    videoId VARCHAR(50),
    likeDate DATETIME,
    CONSTRAINT FK_Favorite_User FOREIGN KEY (userId) REFERENCES Users(id),
    CONSTRAINT FK_Favorite_Video FOREIGN KEY (videoId) REFERENCES Videos(id)
);
*/