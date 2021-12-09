import React, {useState, useEffect, useCallback} from 'react'
import {useHistory} from 'react-router-dom'
// import statSorter from '../functions/statSorter'



function TeamStats({team, newteamId}) {
        const[stats, setStats] = useState({})
        let history = useHistory();
    // const [sortedBy, setSortedBy] = useState(null)
    // const [ascending, setAscending] = useState(true)
    
    console.log("team.espn:", team.espn_id)

    const backtoMyTeams = () => {
        history.push("/user_favorite_teams")
    }

    const fetchTeamStats = useCallback(() => {    
        fetch(`http://site.api.espn.com/apis/site/v2/sports/basketball/mens-college-basketball/teams/${team.espn_id}`)
        .then(r => r.json())
        .then(stats => setStats(stats))
       })
       console.log("Stats:", stats)

       useEffect(() => {
        fetchTeamStats() 
       }, [])

       
       const showStats = (team) => {
           if (team.id === newteamId)
           {    return (
               <button onClick= {() => fetchTeamStats()}> Generate Stats </button>
           ) }
           else {
            return (
                <button onClick ={()=> backtoMyTeams()}> Return to Favorite Teams </button>
           )
           }
        }
        
          
            
        
  

    //    const StatsObj = {
    //     team: teams[newTeamId-1].team_name,
    //     favorite_team_id: newTeamId,           
    //     ranking: Math.floor(Math.random() * 10) + 1,
    //     user_id: currentUser.id,
    // }

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
            {showStats(team)}
        </div>
    )
}

export default TeamStats
