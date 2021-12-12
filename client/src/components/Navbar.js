import React from 'react'
import {NavLink} from 'react-router-dom'
import styled from 'styled-components'

function Navbar({handleLogout, currentUser}) {

    // const [toggleNavbar, settoggleNavbar] = useState(false)

    return (
        <WholeDiv>
           
            <ContentDiv>
                <NavLink to="/home" style ={{marginRight: 45}}>Home</NavLink>
                <NavLink to="/favorite_teams" style={{marginRight: 45}}>Teams</NavLink>
                <NavLink to="/user_favorite_teams" style={{marginRight: 45}}>My Teams</NavLink>
                <NavLink to="/games" style ={{marginRight: 45}}>Games</NavLink>
                <NavLink to="/views" style ={{marginRight: 45}}>Views</NavLink>
                <NavLink to="/players" style ={{marginRight: 45}}>Players</NavLink>
                <NavLink to="/blog" style ={{marginRight: 45}}>Blog</NavLink>
                <NavLink to="/trends" style ={{marginRight: 45}}>Trends</NavLink>
                <NavLink to="/faces" style ={{marginRight: 45}}>Faces</NavLink>
                <NavLink to="/news" style ={{marginRight: 45}}>News</NavLink>
            </ContentDiv>
            <NavDiv>
                <p> Currently signed in as {currentUser.username} <button onClick={handleLogout}>Logout</button></p>
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

const NavDiv = styled.div`
    justify-content: center;
    display: flex;
    align-items: center;`


const ContentDiv = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
`

export default Navbar
