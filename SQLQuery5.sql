USE [master]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[AddEnsayoStudents]
		@StudentNumber = N'841110690',
		@Stu_Ensayo = N'falsdkjfalskdjf',
		@Stu_Status = N'ok'

SELECT	@return_value as 'Return Value'

GO
