import React from "react";
import { Route, Switch } from "react-router-dom";
import Header from "components/header";
import Projects from "components/projects";
import ProjectDetail from "components/projectDetail";

const MainPage = () => {
  return (
    <div>
      <Header />
      <Switch>
        <Route exact path={["/", "/projects"]}>
          <Projects />
        </Route>
        <Route exact path={"/project/:id"}>
          <ProjectDetail />
        </Route>
      </Switch>
    </div>
  );
};

export default MainPage;
