import React from "react";
import List from "components/projects/List";
import { useQuery } from "@apollo/react-hooks";
import { loader } from "graphql.macro";
import Form from "components/projects/Form";
import { GetProjects } from "__types__/GetProjects";

const GET_PROJECTS = loader("src/graphql/queries/getProjects.graphql");

const Projects = () => {
  const { data, error, loading, refetch } = useQuery<GetProjects>(GET_PROJECTS);

  if (loading) return <div>Fetching</div>;
  if (error) return <div>Error</div>;
  if (!data) return <div>Data not found</div>;

  return (
    <div>
      <Form refetch={refetch} />
      <List projects={data.projects} />
    </div>
  );
};

export default Projects;
