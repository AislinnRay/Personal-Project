INSERT INTO users_plants (
    common_name,
    scientific_name,
    note,
    plant_img,
    water_interval,
    room,
    user_id
    )
VALUES 
    ($1
    , $2
    , $3
    , $4
    , $5
    , $6
    ,$7
    )
returning *;