import React, {useState, useEffect} from 'react'

function TeamSchedule({team}) {
    const[schedule, setSchedule] = useState([])
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)


    useEffect(()=> {
    fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/2000`)
    .then(r => r.json())
    .then(schedule => setSchedule(schedule))}, [])
    // const[data, setData] = useState([])
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)

    // useEffect(async () => {
    //     const result = await axios.get(
    //         "http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/", {params: {team: "Duke"}});
    //     setData(result.data)

   
    // }, []);
    
    return (
        <div>
            <p>{team.team_name}'s Schedule: </p>
            {/* <li> {schedule.team.uid}</li> */}
        </div>
    )
}

export default TeamSchedule
