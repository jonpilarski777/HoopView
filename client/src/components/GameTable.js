import React, {useState, useEffect, useMemo} from 'react'
import ActualTable from './ActualTable'


function GameTable({games, events}) {

 

    const [data, setData] = useState(null)

    useEffect(() =>{
        const data2 = [...events].map(event => {
           return({
                dateEvent: event.dateEvent,
                 strAwayTeam: event.strAwayTeam, strHomeTeam: event.strHomeTeam,
                intAwayScore: event.intAwayScore,
                intHomeScore: event.intHomeScore,
                strStatus: event.strStatus,
                })
            })
        
        setData(data2)
        }, [events])

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
                {Header: 'Status',
                 accessor: 'strStatus'},
        ]


    return (
        <div>
             {data ? <ActualTable data={data} columns={columns}/>: null}
        </div>
    )
}

export default GameTable
