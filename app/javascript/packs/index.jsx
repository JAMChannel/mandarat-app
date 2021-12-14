import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import reportWebVitals from './reportWebVitals';


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.StrictMode>
    <App />
    </React.StrictMode>,
    
    document.getElementById('index')
  );
})


reportWebVitals();