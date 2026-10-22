
USE SistenCoworking;
GO

-- Registrar la primera reserva
EXEC dbo.RegistrarReserva
    @id_usuario = 1,
    @id_sala = 1,
    @fecha_inicio = '2026-10-21T09:00:00',
    @fecha_fin = '2026-10-21T11:00:00';
GO

-- Mostra de reservas
SELECT * FROM dbo.Reservas;
