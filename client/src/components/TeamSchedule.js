import React from 'react'

function TeamSchedule({team}) {
    // const[stats, setStats] = useState([])
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)


    
    fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/9`)
    .then(r => r.json())
    .then(schedule => console.log("schedule:", schedule.team.uid))
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
            <h1>{team.opponent} Is anything? </h1>
        </div>
    )
}

export default TeamSchedule
