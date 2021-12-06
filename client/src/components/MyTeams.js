import React, {useState, useEffect} from 'react'

function MyTeams({}) {
    const [myTeams, setMyTeams] = useState([])

    useEffect(() => {
        fetch('/api/user_favorite_teams', {
            credentials: 'include'
        })
        .then(r => r.json())
        .then(myTeams =>setMyTeams(myTeams))
            

    }, [myTeams])


    return (
        <div>

            {myTeams.map(myTeam => 
                <p>{myTeam.team} </p>
            
            )}
        </div>
    )
}

export default MyTeams
