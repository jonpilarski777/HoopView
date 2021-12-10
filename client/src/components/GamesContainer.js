import React, {useEffect, useState} from 'react'
import GameList from './GameList'




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
  console.log("events", games.events)

    console.log("date:", currentDate)


    return (<div> Current Time is {currentDate}<GameList events = {games.events} games = {games} currentDate={currentDate} />
   </div>)   
}

export default GamesContainer
