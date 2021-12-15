import React from 'react';
import logo from './logo.svg';
import { Route, Routes } from "react-router"
// import { Route, Routes } from "react-router-dom"
import GlobalStyle from "./globalStyles"
import { ThemeProvider } from "styled-components"
import { lightTheme } from "./components/Themes"

//Components
import Main from './components/Main';

function App() {
  // return <>
  // </>
  return <>
    <GlobalStyle />
    <ThemeProvider theme={lightTheme}>
      <Routes>
      <Route exact path="/" element={<Main/>}/>
      </Routes>

    </ThemeProvider>
  </>
  

}

export default App;

{/* <div className="App">
<div className="App-header">
  <img src={logo} className="App-logo" alt="logo" />
</div>
</div> */}