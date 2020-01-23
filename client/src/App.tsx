import React from "react";
import MainPage from "pages/MainPage";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

const App: React.FC = () => {
  return (
    <Router>
      <Switch>
        <Route
          exact
          path={["/", "/projects", "/project/:id"]}
          component={MainPage}
        />
      </Switch>
    </Router>
  );
};

export default App;
