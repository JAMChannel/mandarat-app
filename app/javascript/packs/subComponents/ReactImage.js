import React from 'react'
import logo from '../logo.svg';

function ReactImage() {
  return (
    <div className="App">
      <div className="App-header">
        {/* <p>test</p> */}
        <img src={logo} className="App-logo" alt="logo" />
      </div>
    </div> 
  )
}

export default ReactImage
