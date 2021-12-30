import React from 'react';
import logo from './logo.svg';
import { Route, Routes, useLocation } from "react-router"
// import { Route, Routes } from "react-router-dom"
import GlobalStyle from "./globalStyles"
import { ThemeProvider } from "styled-components"
import { lightTheme } from "./components/Themes"

//Components
import Main from './components/Main';
import BlogPage from './components/BlogPage';
import WorkPage from './components/WorkPage';
import ToreroPage from './components/ToreroPage';
import { AnimatePresence } from "framer-motion";

function App() {
  const location = useLocation();
  // return <>
  // </>
  return <>
    <GlobalStyle />
    <ThemeProvider theme={lightTheme}>
      <AnimatePresence exitBeforeEnter>
        <Routes location={location} key={location.pathname} >
        <Route exact path="/" element={<Main/>}/>
        <Route exact path="/work" element={<WorkPage/>}/>
        <Route exact path="/blog" element={<BlogPage/>}/>
        <Route exact path="/torero" element={<ToreroPage/>}/>
        </Routes>
      </AnimatePresence>

    </ThemeProvider>
  </>
  

}

export default App;

{/* <div className="App">
<div className="App-header">
  <img src={logo} className="App-logo" alt="logo" />
</div>
</div> */}