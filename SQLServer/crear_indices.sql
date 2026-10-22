
USE SistenCoworking;
GO


IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IX_Reservas_Sala_Horario'
    AND object_id = OBJECT_ID('dbo.Reservas')
)
BEGIN
    CREATE INDEX IX_Reservas_Sala_Horario
    ON dbo.Reservas (id_sala, estado, fecha_inicio)
    INCLUDE (fecha_fin);
END;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IX_Reservas_Usuario'
    AND object_id = OBJECT_ID('dbo.Reservas')
)
BEGIN
    CREATE INDEX IX_Reservas_Usuario
    ON dbo.Reservas (id_usuario);
END;
GO
