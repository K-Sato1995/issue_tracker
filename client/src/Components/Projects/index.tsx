import React from "react";
import List from "./List";
import { useProjectsQuery } from "../../generated/graphql";

const Projects = () => {
  const { data, error, loading } = useProjectsQuery();

  if (loading) return <div>Fetching</div>;
  if (error) return <div>Error</div>;
  if (!data) return <div>Data not found</div>;

  return (
    <div>
      <ul>
        <List projects={data.projects} />
      </ul>
    </div>
  );
};

export default Projects;
