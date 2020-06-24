CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role VARCHAR(25)
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255),
    password TEXT,
    role_id INT REFERENCES roles(role_id)
);

CREATE TABLE users_info (
    info_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    profile_pic TEXT,
	user_id int references users(user_id)
);

CREATE TABLE users_plants (
    plant_id SERIAL PRIMARY KEY,
    common_name VARCHAR(45),
    scientific_name VARCHAR(200),
    note TEXT,
    plant_img VARCHAR(200),
    water_interval INT,
    created_at TIMESTAMPTZ(2) DEFAULT now(),
    user_id INT REFERENCES users(user_id)
);

CREATE TABLE plants_shop (
    plant_shop_id SERIAL PRIMARY KEY,
    common_name VARCHAR(45),
    scientific_name VARCHAR(200),
    note TEXT,
    plant_img TEXT
);


    • need to update if adding shopping cart functionality
    • need to update if adding location functionality

alter table users_plants
alter column plant_img type VARCHAR(1000);


--Add plants   
INSERT INTO users_plants (
    common_name,
    scientific_name,
    note,
    plant_img,
    water_interval,
    user_id
    )
VALUES 
    ('Devils Ivy'
    , 'Epipremnum aureum'
    , 'Water once a week. Likes bright light for more growth.'
    , 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbhiKX2t5BJIMCc6vLaa0GtFulk52hVQh7Rw&usqp=CAU'
    , 7
    , 1
    ),
    ('Snake Plant'
    , 'Dracaena trifasciata'
    , 'Water once every two weeks. Needs to be repotted soon'
    , 'https://secure.img1-fg.wfcdn.com/im/33278590/compr-r85/8064/80643595/romam-snake-plant-in-planter.jpg'
    , 14
    , 1
    ),
    ('Snpider Plant'
    , 'Chlorophytum comosum'
    , 'Water once every two weeks.'
    , 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQqHdHjbYPPzAoPvuFPyi3wIdTgJGF75CKVZQ&usqp=CAU'
    , 14
    , 1
    ),
    ('Christmas Cactus'
    , 'Schlumbergera truncata'
    , 'Water once a week.'
    , 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSG4IdYG_6EClofvi24CmpMY8SPSXKwFExsXQ&usqp=CAU'
    , 7
    , 1
    ),
    ('Umbrella Tree'
    , 'Schefflera S. actinophylla'
    , 'Water once a week.'
    , 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTsEtro32VyRC3oFvxiE53Q5TjTCm9CMLU64Q&usqp=CAU'
    , 7
    , 1
    ),
    ('Staghorn Fern'
    , 'Platycerium bifurcatum'
    , 'Soak thoroughly once a week.'
    , 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTOL2J6m5uBYCgbtIvxO-ZbRquX1YaQkrnVtg&usqp=CAU'
    , 7
    , 1
    )
returning *;

--nodemailer deleting email
delete from users_info where name = 'ace';
delete from users where email = 'aislinn.ray.m@gmail.com'

