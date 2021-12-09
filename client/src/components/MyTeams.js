import React, {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'

function MyTeams({teams, currentUser}) {

    const [myTeams, setMyTeams] = useState([])

    useEffect(() => {
        fetch('/api/user_favorite_teams', {
            credentials: 'include' 
        })
        .then(r => r.json())
        .then(myTeams => setMyTeams(myTeams))}, [teams])
            
        //     myFavsOnly => { const userFavoriteList = myTeams.filter((myTeam) => myTeam.user_id !== currentUser.id)
        //      setMyTeams(userFavoriteList)
        // })}, [teams])

         
    console.log("myTeams", myTeams)

    
    const myFavsOnly = myTeams.filter((myTeam) => myTeam.user_id === currentUser.id)

    console.log("myFavsOnly", myFavsOnly)



    return (
        <div>
     
        {myFavsOnly.map(team => (
                <p>
                    <Link to={`favorite_teams/${team.favorite_team_id}`}>
                        {team.team}
                    </Link>
                </p>
            ))}
        </div>)
}

export default MyTeams
