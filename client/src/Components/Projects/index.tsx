import React from "react";
import List from "./List";
import { useQuery } from "@apollo/react-hooks";
import { loader } from "graphql.macro";
import Form from "./Form";
import { GetProjects } from "../../__types__/GetProjects";

const GET_PROJECTS = loader("src/graphql/queries/getProjects.graphql");

const Projects = () => {
  const { data, error, loading } = useQuery<GetProjects>(GET_PROJECTS);

  if (loading) return <div>Fetching</div>;
  if (error) return <div>Error</div>;
  if (!data) return <div>Data not found</div>;

  return (
    <div>
      <ul>
        <Form />
        <List projects={data.projects} />
      </ul>
    </div>
  );
};

export default Projects;
