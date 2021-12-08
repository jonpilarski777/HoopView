import React from 'react'
import {Link} from 'react-router-dom'


function MyTeams({currentUser, myTeams}) {

   
    return (
        <div> 
            {myTeams.filter((myTeam) => {if (myTeam.user_id === currentUser.id) {return (<li> <EachFavTeam myTeam = {myTeam.team} /> </li>)}})}

        </div>
    )
}

export default MyTeams
