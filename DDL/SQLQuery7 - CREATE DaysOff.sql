USE DBMS_DDL;
GO

CREATE TABLE DaysOff
(
	[date]		DATE	 PRIMARY KEY,
	holiday		TINYINT	 NOT NULL	 CONSTRAINT FK_DO_Holidays REFERENCES Holidays(holiday_id)
);