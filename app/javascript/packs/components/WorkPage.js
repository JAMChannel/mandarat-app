import React, { useState,useEffect,useRef } from 'react'
import styled, { ThemeProvider } from 'styled-components'
import axios from 'axios'
import {DarkTheme} from './Themes';
import {motion} from 'framer-motion';

import SocialIcons from '../subComponents/SocialIcons';
import PowerButton from '../subComponents/PowerButton';
import ParticleComponent from '../subComponents/ParticleComponent';

import Card from '../subComponents/Card';
import BigTitlte from '../subComponents/BigTitlte';
// import { YinYang } from "../logo.svg"
import logo from "../logo.svg";

const Box = styled.div`
background-color: ${props => props.theme.body};

height:400vh;
position: relative;
display: flex;
align-items: center;


`

const Main = styled(motion.ul)`
position: fixed;
top: 12rem;
left:calc(10rem + 15vw);
height: 40vh;
display: flex;

color:white;
`
const Rotate = styled.span`
display:block;
position: fixed;
right:1rem;
bottom: 1rem;
width: 80px;
height: 80px;
z-index:1;
`


// Framer-motion Configuration
const container = {

  hidden: {opacity:0},
  show: {
    opacity:1,

    transition:{
      staggerChildren: 0.5,
      duration: 0.5,
    }
  }

}

function WorkPage() {
  const [portfolios, setPortfolios] = useState([]) // portfoliosの情報が格納される
  const ref = useRef(null);
  const yinyang = useRef(null);

  useEffect(() => {
    
    axios.get('/api/v1/portfolios.json')
    .then(resp => {
      // console.log(resp.data)
      setPortfolios(resp.data);
    })
    .catch(e => {
      console.log(e)
    })
  }, [])

  useEffect(() => {
    let element = ref.current;
    
    const rotate = () => {
      element.style.transform = `translateX(${-window.pageYOffset}px)`

      return (yinyang.current.style.transform =
        'rotate(' + -window.pageYOffset + 'deg)')

    };

    window.addEventListener('scroll', rotate )
    return () =>  window.removeEventListener('scroll', rotate )

  }, [])

  return (
    <ThemeProvider theme={DarkTheme}>
      <Box > 
      <SocialIcons theme='dark'/>
      <PowerButton />
      <ParticleComponent theme='dark' />

      <Main ref={ref}   variants={container} initial='hidden' animate='show' >
        {
          portfolios.map( d =>
            <Card key={d.id} data={d} />
            )
        }
      </Main>
      <Rotate ref={yinyang}>
      {/* <Rotate> */}
        {/* <YinYang width={80} height={80} fill={DarkTheme.text} /> */}
        <img src={logo} width={80} height={80} fill={DarkTheme.text} />
      </Rotate>
      </Box>

      <BigTitlte text="PortFolio" top='10%' right="20%" />
    </ThemeProvider>
    
)

}

export default WorkPage
