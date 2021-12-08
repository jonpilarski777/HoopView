import React from 'react'
import {Link} from 'react-router-dom'

function MyTeams({myFavsOnly}) {
    //     const [myTeams, setMyTeams] = useState([])

    //  useEffect(() => {
    //     fetch('/api/user_favorite_teams', {
    //         credentials: 'include' 
    //     })
    //     .then(r => r.json())
    //     .then(myTeams => setMyTeams(myTeams))
    //     console.log("myTeams", myTeams)}
    // , [])

    // const myFavsOnly = myTeams.filter((myTeam) => myTeam.user_id === currentUser.id)

 


    return (
        <div>
        <h1> My Fav Teams </h1>
        {myFavsOnly.map(team => (
                <p>
                    <Link to={`user_favorite_teams/${team.id}`}>
                        {team.id}
                    </Link>
                </p>
            ))}
        </div>)
}

export default MyTeams
