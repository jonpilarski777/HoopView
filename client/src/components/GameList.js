import React from 'react'

function GameList({currentDate, games, events}) {
 
    // const {events} = games
    if (!games) {return <p>No games happening on {currentDate} </p>}
    return (
        <div>
            {events.map(event => (
                <p>
                    {event.dateEvent}
                    {event.strAwayTeam}
                    {event.strHomeTeam}
                    {event.intAwayScore}
                    {event.intHomeScore}
                </p>
            ))}
        </div>
    ) 
      
}

export default GameList
