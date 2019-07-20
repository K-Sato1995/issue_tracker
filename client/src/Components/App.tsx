import React from "react";
import Issues from "./Issues";
import { Test } from "./test";

const App: React.FC = () => {
  return (
    <div className="App">
      <h1>Issue Tracker</h1>
      <Issues title={"Issues"} />
      <Test />
    </div>
  );
};

export default App;
