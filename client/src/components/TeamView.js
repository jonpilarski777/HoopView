import React, {useState, useEffect} from 'react'

function TeamView({currentUser}) {

    const [teams, setTeams] = useState([])

    useEffect(() => {
    fetch('/api/user_favorite_teams')
    .then(res => res.json())
    .then(teams => setTeams(teams))
    } , [currentUser])




    return (
        <div>



        </div>
    )
}

export default TeamView
