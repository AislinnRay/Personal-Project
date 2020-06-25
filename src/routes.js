import React from 'react';
import { Switch, Route } from 'react-router-dom';
import Dashboard from './components/Dashboard';
import Landing from './components/Landing';
import Register from './components/Register';
import Profile from './components/Profile';
import AddPlant from './components/AddPlant';

export default (
    <Switch>
        <Route exact path = '/' component={Landing} />
        <Route path='/dash' component={Dashboard} />
        <Route path='/profile' component={Profile} />
		<Route path='/register' component={Register} />
        <Route path = '/add' component = {AddPlant} />
       	<Route path = '/edit/:plant_id' component = {AddPlant} />
        	{/* <Route path = '/plant/:id/water' component = {WaterLog} /> */}
            
    </Switch>
)