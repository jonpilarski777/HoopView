import React, {useState, useEffect, useCallback} from 'react'
import statSorter from '../functions/statSorter'



function TeamStats({team}) {
        const[stats, setStats] = useState([])
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)
    console.log("team.espn:", team.espn_id)

    const fetchTeamStats = useCallback(() => {    
        fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/150`)
        .then(r => r.json())
        .then(data => console.log("stats:", data))
       })

       useEffect(() => {
        fetchTeamStats()
       }, [team.espn_id])




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
            <p> {team.team_name}'s Stats: </p>
        </div>
    )
}

export default TeamStats
