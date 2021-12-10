import React, {useState, useEffect} from 'react'
import ActualTable from './ActualTable'

function GameTable({games, events}) {

    const [data, setData] = useState(null)

    useEffect(() =>{
        const data2 = [...games].map(event => {
            return({
                dateEvent: event.dateEvent,
                strAwayTeam: event.strAwayTeam,
                strHomeTeam: event.strHomeTeam,
                intAwayScore: event.intAwayScore,
                intHomeScore: event.intHomeScore,
               
            })
        })
        setData(data2)
        }, [games])

        const columns = [
            {
                Header: 'Date',
                accessor: 'dateEvent'
            },
            {
                Header: 'Away Team',
                accessor: 'strAwayTeam'
            },
            {
                Header: 'Home Team',
                accessor: 'strHomeTeam'
            },
            {
                Header: 'Away Score',
                accessor: 'intAwayScore'
            },
            {
                Header: 'HomeScore',
                accessor: 'intHomeScore'
            },
        ]
    

    return (
        <div>
             {data ? <ActualTable data={data} columns={columns}/>: null}
        </div>
    )
}

export default GameTable
