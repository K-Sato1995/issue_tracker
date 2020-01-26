import React from "react";
import { useParams } from "react-router-dom";
import { GetProject, GetProjectVariables } from "__types__/GetProject";
import { useQuery } from "@apollo/react-hooks";
import { loader } from "graphql.macro";

const GET_PROJECT = loader("src/graphql/queries/getProject.graphql");

const ProjectDetail = () => {
  const { id } = useParams();
  if (!id) {
    throw new Error();
  }
  const { data, error, loading } = useQuery<GetProject, GetProjectVariables>(
    GET_PROJECT,
    {
      variables: { id }
    }
  );

  if (error) {
    return <>Error! {error.message}</>;
  }

  if (!data || loading) {
    return <>Loading...</>;
  }

  const project = data.project;

  return (
    <div>
      <h1>{project.name}</h1>
      <h2>Issues</h2>
      <ul>
        {project.columns.map(column => (
          <div>
            <h3>{column.title}</h3>
            {column.issues.map(isssue => (
              <li>{isssue.title}</li>
            ))}
          </div>
        ))}
      </ul>
    </div>
  );
};

export default ProjectDetail;
