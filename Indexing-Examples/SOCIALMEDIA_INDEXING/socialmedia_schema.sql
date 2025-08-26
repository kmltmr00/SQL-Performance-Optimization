-- socialmedia_schema.sql
-- Bu dosya, örnek tablo yapılarını oluşturur. GERÇEK VERİ İÇERMEZ.

USE [master];
GO

CREATE DATABASE [socialmedia];
GO

USE [socialmedia];
GO

-- Tablo yapısını oluştur
CREATE TABLE socialmedia1 (
    post_id INT IDENTITY(1,1) PRIMARY KEY,
    platform NVARCHAR(50) NOT NULL,
    post_day NVARCHAR(20) NOT NULL,
    likes INT NOT NULL DEFAULT 0,
    post_type NVARCHAR(50),
    post_time DATETIME NOT NULL,
    comments INT NOT NULL DEFAULT 0,
    shares INT NOT NULL DEFAULT 0,
    sentiment_score NVARCHAR(20)
);
GO