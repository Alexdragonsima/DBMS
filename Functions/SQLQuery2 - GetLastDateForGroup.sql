USE DBMS_DDL;
GO

ALTER	 FUNCTION dbo.GetLastDateForGroup(@group NVARCHAR(10))RETURNS DATE
BEGIN
	RETURN (SELECT MAX([date]) FROM Schedule WHERE [group]=dbo.GetGroupID(@group));
END