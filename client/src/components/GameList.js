import React, {useState} from 'react'
import styled from 'styled-components'



function GameList({currentDate, games, events}) {

    const [showLive, SetShowLive] = useState(false)
 
    const handleToggle = () => {
        SetShowLive(!showLive)
    }

    if (!events) {return <p>No games happening at this time: {currentDate} </p>}
    return (
        
        <div>
            
                <TitleDiv> Date StartTime Away Home Score Status</TitleDiv>
             {events.map(event => (
                <ContentDiv>
                    {event.dateEvent} {'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}
                    {event.strEventTime} {'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}
                    {event.strAwayTeam} {'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}
                    {event.strHomeTeam} {'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}
                     {event.intAwayScore} {'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}
                    {event.intHomeScore}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}{'   '}
                    {event.strStatus}
                </ContentDiv>))}
    
        </div>)
        

      
}
const TitleDiv = styled.div`
    color: #FFFF00;
    display: flex;
    color: #ff0000;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    flex-direction: row;
    justify-content: space-evenly;
`

const ContentDiv = styled.div`
    display: flex;
    justify-content: center;
`
export default GameList
