import React, {useEffect, useState} from 'react'
// import GameList from './GameList'
import GameTable from './GameTable'
import styled from 'styled-components'

function GamesContainer({currentUser}) {
    const [games, setGames] = useState([])
    const [currentDate, setCurrentDate] = useState('')

    
  useEffect(() => {fetch('https://www.thesportsdb.com/api/v2/json/50130162/livescore.php?s=Basketball&l=4607')
  .then(r =>r.json())
  .then(games  => {setGames(games)
  const date = new Date().getDate();
  const month = new Date().getMonth() + 1;
  const year = new Date().getFullYear();
  const hour = new Date().getHours();
  const minute = new Date().getMinutes();
  const second = new Date().getSeconds();
  const  formattedDate = month + '/' + date + '/' + year + " " + hour + ':' + minute + ":"  + second 
    setCurrentDate(formattedDate)})
},[])

  console.log("games:", games)
  console.log("games.events", games.events)

    
 //Table with minimal formatting - want to be able to use ReactTable: 
//   return (<WholeDiv> <TitleDiv> Current Time is {currentDate}
//     </TitleDiv> <ContentDiv> <GameList events = {games.events} games = {games} /> </ContentDiv>   </WholeDiv>)
  
  //Table using ReactTable:
  return (<WholeDiv> <TitleDiv> Current Time is {currentDate}
    </TitleDiv> <ContentDiv> <GameTable events = {games.events} games = {games} /> </ContentDiv>   </WholeDiv>)
  
}


const WholeDiv = styled.div`
    margin-left:30px;
    transition: all 5s ease-in-out;
`

const TitleDiv = styled.div`
    color: #FFFF00;
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    flex-direction: row;
    justify-content: space-evenly;
`

const ContentDiv = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
`
export default GamesContainer