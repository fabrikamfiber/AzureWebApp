USE [master]
GO
IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'AzureWebAppDB')
CREATE DATABASE [AzureWebAppDB]
GO