import React, {useState, useEffect, useCallback} from 'react'

function TeamSchedule({team}) {
    const[schedule, setSchedule] = useState([])
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)

    const fetchTeamSchedule = useCallback(() =>{
    fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/2000`)
    .then(r => r.json())
    .then(schedule => setSchedule(schedule))})


    useEffect(() => {fetchTeamSchedule() }, [team.espn_id])

    
    return (
        <div>
            <p>{team.team_name}'s Schedule: </p>
            {/* <li> {schedule.team.uid}</li> */}
        </div>
    )
}

export default TeamSchedule
