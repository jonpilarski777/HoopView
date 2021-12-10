import React, {useEffect, useState} from 'react'
import {Switch, Route} from 'react-router-dom'
import GameList from './GameList'
import GameDetail from './GameDetail'
// import DateTime from './DateTime'
// import {getCurrentDate} from './utils'
// import Moment from 'react-moment';
// import 'moment-timezone';



function GamesContainer({currentUser}) {
    const [games, setGames] = useState([])
    
  useEffect(() => {fetch('https://www.thesportsdb.com/api/v2/json/50130162/livescore.php?s=Basketball&l=4607')
  .then(r =>r.json())
  .then(games => setGames(games))},[])

  console.log("games:", games)




    return (<div> lets gooo </div>)   
//         (
       
                ;// /* //    
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
