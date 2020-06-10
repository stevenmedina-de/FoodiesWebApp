INSERT INTO food_service_profile.restaurant (r_name)
VALUES (
	'TEST'
);

SELECT * FROM food_service_profile.restaurant;

DELETE FROM food_service_profile.restaurant WHERE r_name = 'TEST';

SELECT * FROM food_service_profile.restaurant;

DBCC CHECKIDENT ('food_service_profile.restaurant', RESEED, 0);  
GO