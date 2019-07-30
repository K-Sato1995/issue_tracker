import React from "react";
import Projects from "./Projects";
import Header from "./Header";
import Form from "./Projects/Form";
import { BrowserRouter as Router, Route } from "react-router-dom";

const App: React.FC = () => {
  return (
    <Router>
      <div className="App">
        <Header />
        <Route exact path="/" component={Projects} />
        <Route path="/new-project" component={Form} />
      </div>
    </Router>
  );
};

export default App;
