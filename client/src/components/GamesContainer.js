import React, {useEffect, useState} from 'react'
import GameList from './GameList'




function GamesContainer({currentUser}) {
    const [games, setGames] = useState([])
    const [currentDate, setCurrentDate] = useState('')

    
  useEffect(() => {fetch('https://www.thesportsdb.com/api/v2/json/50130162/livescore.php?s=Basketball&l=4607')
  .then(r =>r.json())
  .then(games => {setGames(games)
  const date = new Date().getDate();
  const month = new Date().getMonth() + 1;
  const year = new Date().getFullYear();
  const  formattedDate= month + '/' + date + '/' + year; 
    setCurrentDate(formattedDate)})
},[])

  console.log("games:", games)

    console.log("date:", currentDate)


    return (<div> Today is {currentDate}<GameList games = {games} currentDate={currentDate} />
   </div>)   
//         (
       
                // /* //    
//             date_create: moment().format("DD-MM-YYYY hh:mm:ss")
// //             </Momentd> */}
// //             <Switch>
// //                 <Route
// //                 exact
// //                 path="/games"                
// //                 >
//                 <GameList 
//                 games={games}
//                 />
//                 </Route>
// //                 <Route
// //                 exact
// //                 path="/games/:id" 
// //                 render= {({match}) => {
// //                     return (
// //                         <GameDetail
// //                         games={games}
// //                         />
// //                     )
// //                 }}               
//                 />
// //             </Switch>
//         </div>
//     ))
}

export default GamesContainer
