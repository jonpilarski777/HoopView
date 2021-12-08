import React, {useState, useEffect} from 'react'
import statSorter from '../functions/statSorter'
import axios from 'axios'


function TeamStats({team}) {
        // const[stats, setStats] = useState([])
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)

   
    fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/150`)
    .then(r => r.json())
    .then(data => console.log("stats:", data))
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
