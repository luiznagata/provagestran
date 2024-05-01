-- Criando o Banco de Dados
USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'GestranSoft'
)
CREATE DATABASE [GestranSoft]
GO