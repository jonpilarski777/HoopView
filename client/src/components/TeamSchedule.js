import React, {useState, useEffect, useCallback} from 'react'
import {useHistory} from 'react-router-dom'



function TeamSchedule({newteamId, team}) {
    const[schedule, setSchedule] = useState({})
    let history = useHistory();
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)


    console.log("schedule:", schedule)

    const fetchTeamSchedule = useCallback(() =>{
    fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/${team.espn_id}/schedule?season=2022`)
    .then(r => r.json())
    .then(schedule => setSchedule(schedule))})

    console.log("schedule:", schedule)

    const backtoGames = () => {
        history.push("/games")
    }

    useEffect(() => {fetchTeamSchedule() }, [])

       
    const showSchedule = (team) => {
        if (team.id === newteamId)
        {    return (
            <button onClick= {() => fetchTeamSchedule()}> Generate Stats </button>
        ) }
        else {
         return (
             <button onClick ={()=> backtoGames()}> Return to Today's Games </button>
        )
        }
     }
     
           


    return (
        <div>
            <p>{team.team_name}'s Schedule: </p>
            {showSchedule(team)}
        </div>
    )
}

export default TeamSchedule
