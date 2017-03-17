import React, { Component } from 'react';
import BarChart from './Components/BarChart';
import './App.css';

class App extends Component {
  constructor(){
    super();
    this.state = {
      data:[500, 400, 232, 200, 233, 120, 78, 100, 400]
    }
  }

  render() {
    return (
      <div className="App">
        <BarChart data={this.state.data} />
      </div>
    );
  }
}

export default App;
