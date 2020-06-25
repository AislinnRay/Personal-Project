import React from 'react';
import {withRouter} from 'react-router-dom';
import axios from 'axios';
import '../style/stylePlant.css';


function Plant({plant, history, setPlant}){
    const deleteItem = () => {
        axios.delete(`/api/plants/${plant.plant_id}`).then((res) => {
            setPlant()
        })
    }
    return (
        <div className="Plant">
            <img className="plant_img" src={plant.plant_img}/>
            <a>
            <div className="plant_title">{plant.common_name}</div>
            <div className="plant_title">{plant.scientific_name}</div>
            <div className="plant_note">{plant.note}</div>
            <a className="buttons">
            <button className="plant_button"
            onClick ={() => history.push(`/edit/${plant.plant_id}`)}
            >Edit</button>
            <button className="plant_button" onClick={deleteItem}>Delete</button>
            </a>
            </a>
        </div>
    )
}

export default withRouter(Plant)