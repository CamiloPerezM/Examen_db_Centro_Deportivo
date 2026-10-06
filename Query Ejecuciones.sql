EXEC sp_BuscarReserva @id_reserva = 1;
GO

DECLARE @TotalRes INT;
EXEC sp_TotalReservas @Total = @TotalRes OUTPUT;
SELECT @TotalRes AS TotalReservasRegistradas;
GO

DECLARE @Recaudo DECIMAL(10,2);
EXEC sp_CalcularRecaudo @id_cancha = 1, @total_recaudo = @Recaudo OUTPUT;
SELECT @Recaudo AS TotalRecaudoCancha;
GO