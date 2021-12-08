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
        {myFavsOnly.map(EachFavTeam => (
                <p>
                    <Link to={`teams/${EachFavTeam.id}`}>
                        {EachFavTeam.team_name}
                    </Link>
                </p>
            ))}
        </div>)
}

export default MyTeams
