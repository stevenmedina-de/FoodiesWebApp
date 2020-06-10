CREATE SCHEMA user_profile;
GO

CREATE SCHEMA food_service_profile;
GO

CREATE TABLE user_profile.user_acc (
	user_acc_id INT PRIMARY KEY IDENTITY (1,1),
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	user_password VARCHAR(50) NOT NULL,
	profile_pic VARBINARY(MAX),
	username VARCHAR(50) NOT NULL,
	home_location GEOGRAPHY
);

CREATE TABLE food_service_profile.restaurant (
	restaurant_id INT PRIMARY KEY IDENTITY (1,1),
	r_name VARCHAR(50) NOT NULL,
	brand VARBINARY(MAX),
);

CREATE TABLE food_service_profile.restaurant_type (
	t_id INT PRIMARY KEY IDENTITY (1,1),
	r_id INT NOT NULL,
	r_type VARCHAR(50) NOT NULL,
	FOREIGN KEY (r_id) REFERENCES food_service_profile.restaurant(restaurant_id)
);

CREATE TABLE food_service_profile.meal (
	meal_id INT PRIMARY KEY IDENTITY (1,1),
	m_name VARCHAR(50) NOT NULL
);

CREATE TABLE food_service_profile.meal_type (
	t_id INT PRIMARY KEY IDENTITY (1,1),
	meal_id INT NOT NULL,
	m_type VARCHAR(50) NOT NULL,
	FOREIGN KEY (meal_id) REFERENCES food_service_profile.meal(meal_id)
);

CREATE TABLE food_service_profile.meal_photo (
	photo_id INT PRIMARY KEY IDENTITY (1,1),
	meal_id INT NOT NULL,
	photo VARBINARY(MAX) NOT NULL,
	descript VARCHAR(2000),
	FOREIGN KEY (meal_id) REFERENCES food_service_profile.meal(meal_id)
);

CREATE TABLE user_profile.reviews (
	review_id INT PRIMARY KEY IDENTITY (1,1),
	rating INT NOT NULL,
	review_description VARCHAR(2000),
	posted_on DATETIME2 NOT NULL,
	user_acc_id INT NOT NULL,
	restaurant_id INT NOT NULL,
	FOREIGN KEY (user_acc_id) REFERENCES user_profile.user_acc(user_acc_id),
	FOREIGN KEY (restaurant_ID) REFERENCES food_service_profile.restaurant(restaurant_id)
);

CREATE TABLE user_profile.favorites (
	fav_id INT PRIMARY KEY IDENTITY (1,1),
	rating VARCHAR(10) NOT NULL,
	user_acc_id INT NOT NULL,
	restaurant_id INT,
	meal_id INT,
	FOREIGN KEY (user_acc_id) REFERENCES user_profile.user_acc(user_acc_id),
	FOREIGN KEY (restaurant_id) REFERENCES food_service_profile.restaurant(restaurant_id),
	FOREIGN KEY (meal_id) REFERENCES food_service_profile.meal(meal_id)
);

CREATE TABLE food_service_profile.food_service (
	fs_id INT PRIMARY KEY IDENTITY (1,1),
	r_id INT NOT NULL,
	m_id INT NOT NULL,
	FOREIGN KEY (r_id) REFERENCES food_service_profile.restaurant(restaurant_id),
	FOREIGN KEY (m_id) REFERENCES food_service_profile.meal(meal_id)
);

CREATE TABLE user_profile.patrons (
	patron_id INT PRIMARY KEY IDENTITY (1,1),
	r_id INT NOT NULL,
	u_id INT NOT NULL,
	visited DATETIME2 NOT NULL,
	m_id INT NOT NULL,
	FOREIGN KEY (r_id) REFERENCES food_service_profile.restaurant(restaurant_id),
	FOREIGN KEY (u_id) REFERENCES user_profile.user_acc(user_acc_id),
	FOREIGN KEY (m_id) REFERENCES food_service_profile.meal(meal_id)
);

CREATE TABLE user_profile.user_gen_photo (
	gen_id INT PRIMARY KEY IDENTITY (1,1),
	user_acc_id INT NOT NULL,
	photo_id INT NOT NULL,
	FOREIGN KEY (user_acc_id) REFERENCES user_profile.user_acc(user_acc_id),
	FOREIGN KEY (photo_id) REFERENCES food_service_profile.meal_photo(photo_id)
);