import React from 'react'
import {NavLink} from 'react-router-dom'
import styled from 'styled-components'

function Navbar({handleLogout, currentUser}) {

    // const [toggleNavbar, settoggleNavbar] = useState(false)

    return (
        <WholeDiv>
           
            <ContentDiv>
                <NavLink to="/favorite_teams" style={{marginRight: 45}}>Teams</NavLink>
                <NavLink to="/user_favorite_teams" style={{marginRight: 45}}>Favorite Teams</NavLink>
                <NavLink to="/games">Games</NavLink>
            </ContentDiv>
            <UserDiv>
                <p style={{color: "black"}}> Welcome {currentUser.username} </p>
            </UserDiv>
            <NavDiv>
                <p> <button onClick={handleLogout}>Logout</button></p>
                
            </NavDiv>
        </WholeDiv>
    )
}

const WholeDiv = styled.div`
   
    justify-content: space-between;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    padding: 15px;
    background-color: #fff; 
    `

const UserDiv = styled.div`
margin-right:45;
justify-content: center;
display: flex;
align-items: center;
color: ffffff`

const NavDiv = styled.div`
    justify-content: center;
    display: flex;
    align-items: center;
    color: ffffff`


const ContentDiv = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
`

export default Navbar
