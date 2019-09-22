import React from 'react';
import logo from './logo.svg';
import './App.css';

const buttonStyles = {
  padding: '16px',
  outline: 'navajowhite',
  background: 'transparent',
  border: '1px solid',
  borderRadius: '4px',
  fontSize: '20px',
  position: 'absolute',
  cursor: 'pointer',
  top: '30px',
  left: '30px',
}

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      <button
        style={buttonStyles}
        type="button"
        className="App-link"
        id="subscribe"
      >
        Следить за изменениями
      </button>
      </header>
    </div>
  );
}

export default App;
