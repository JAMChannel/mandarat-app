// import React from 'react'
// import { motion } from 'framer-motion'
import React, { useState } from 'react'
// import { NavLink } from 'react-router-dom'
import styled, { keyframes } from 'styled-components'
// import styled from 'styled-components'
import PowerButton from '../subComponents/PowerButton'
import SocialIcons from '../subComponents/SocialIcons'
// import ReactImage from '../subComponents/ReactImage'
import logo from '../logo.svg';
// import { YinYang } from './AllSvgs'
;


const MainContainer = styled.div`
background: ${props => props.theme.body};
width: 100vw;
height: 100vh;
overflow:hidden;

position: relative;

h2,h3,h4,h5,h6{
  font-family:'Karla', sans-serif ;
  font-weight:500;
}
`

const Container = styled.div`
padding: 2rem;
`


const rotate = keyframes`
from{
    transform: rotate(0);
}
to{
    transform: rotate(360deg);
}
`

const Center = styled.button`
position: absolute;
top: ${props => props.click ? '75%' :'50%'  };
left: ${props => props.click ? '92%' :'50%'  };
transform: translate(-50%,-50%);
border: none;
outline: none;
background-color: transparent;
cursor: pointer;

display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
transition: all 1s ease;

&>:first-child{
    animation: ${rotate} infinite 2.1s linear;
}

&>:last-child{
    display: ${props => props.click ? 'none' :'inline-block'  };
    padding-top: 1rem;
}
`

const Main = () => {
  const [click, setClick] = useState(false);
  const handleClick = () => setClick(!click);

  return (
   <MainContainer>
     <Container>
       <PowerButton />
       <SocialIcons />
       <Center click={click}>
        <img onClick={()=> handleClick()} src={logo} width={click ? 120 : 300} height={click ? 120 : 200} />
          {/* <ReactImage  onClick={()=> handleClick()} width={click ? 120 : 200} height={click ? 120 : 200} fill='currentColor' /> */}
          <span>click</span>     
        </Center>
       {/* <ReactImage /> */}
      {/* Main component/Page */}
     </Container>
   </MainContainer>
  )
}

export default Main


