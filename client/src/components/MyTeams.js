import React from 'react'
import {Link} from 'react-router-dom'

function MyTeams({currentUser, myFavsOnly}) {
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

    console.log("myFavsOnly in MyTeams component", myFavsOnly)


    return (
        <div>
        <h1> My Fav Teams </h1>
        {/* {myTeams.map(team => (
            <p>
                <Link to={`teams/${team.id}`}>
                  Testing
                </Link>
            </p>
        ))} */}
        </div>)
}

export default MyTeams
