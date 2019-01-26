import React, { Component } from 'react';

import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import OtherPage from './other-page';
import Fib from './fib';

import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <Router>
        <div>

          <div className="App">
            <div className="App">
              Fib Calculator Version Kubernete
             </div>
            <Link to='/fib'>Home</Link>
            &Nbsp;
             <Link to='/otherpage'>Other Page</Link>
          </div>
          <div>
            <Route exact path='/fib' component={Fib} />
            <Route exact path='/otherpage' component={OtherPage} />
          </div>
        </div>
      </Router>
    );
  }
}

export default App;
