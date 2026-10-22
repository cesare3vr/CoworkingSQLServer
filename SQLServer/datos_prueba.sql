
USE SistenCoworking;
GO

-- Registrar salas de prueba
INSERT INTO dbo.Salas (nombre, capacidad, estado)
VALUES
(N'Sala Reunión', 10, 'Disponible'),
(N'Sala de gerencia', 6, 'Disponible'),
(N'Sala equipo', 15, 'Disponible');
GO

SELECT * FROM dbo.Salas;
