/*
	Script to avoid accidental deletion of database
	Roberto Minelli
	Janeiro - 2019
*/

-- Trigger 

CREATE TRIGGER Trig_prevention_Drop_Database 
	ON ALL SERVER 

FOR DROP_DATABASE

AS

RAISERROR('######### The DROP DATABASE function is disabled for this server! #########', 16,1);

ROLLBACK;


-- Disable Trigger
DISABLE TRIGGER Trig_Prevencao_Drop_Database ON ALL SERVER


-- Enable Trigger
ENABLE TRIGGER Trig_Prevencao_Drop_Database ON ALL SERVER


-- Drop Database
DROP DATABASE -- Nome do banco
GO