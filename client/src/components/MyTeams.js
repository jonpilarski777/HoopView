import React from 'react'
import {Link} from 'react-router-dom'


function MyTeams({currentUser, myTeams}) {

   
    return (
        <div> 
            {myTeams.filter((eachTeam) => {if (eachTeam.user_id === currentUser.id) {return (<li> {eachTeam.team} </li>)}})}

        </div>
    )
}

export default MyTeams
