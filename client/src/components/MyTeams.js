import React from 'react'
import {Link} from 'react-router-dom'


function MyTeams({myTeams}) {
    // const [myTeams, setMyTeams] = useState([])
    // const [ranking, setRanking]= useState(0)

    // useEffect(() => {
    //     fetch('/api/user_favorite_teams', {
    //         credentials: 'include'
    //     })
    //     .then(r => r.json())
    //     .then(myTeams =>setMyTeams(myTeams))
    //     // 
            

    // }, [])

    // const handleSubmit = (e) => {
    //     e.preventDefault();



    // }

    // //updaterankingonfavteam



    return (
        <div>
             {myTeams.map(myTeam => (
            <p>
                <Link to= {`myTeams/${myTeam.id}`}>
                {myTeam.team} 
                </Link>
            </p>
           ) )}
        </div>
    )
}

export default MyTeams
