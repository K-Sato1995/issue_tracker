import React from "react";
import { useParams } from "react-router-dom";
import { GetProject, GetProjectVariables } from "__types__/GetProject";
import { useQuery } from "@apollo/react-hooks";
import { loader } from "graphql.macro";
import Column from "components/projectDetail/Column";
import { DragDropContext } from "react-beautiful-dnd";

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
  const onDragEnd = () => {
    // TODO: Change status here
    console.log("OnDragEnd");
  };
  return (
    <>
      <h1>{project.name}</h1>
      <DragDropContext onDragEnd={onDragEnd}>
        {project.columns.map(column => (
          <Column key={column.id} column={column} />
        ))}
      </DragDropContext>
    </>
  );
};

export default ProjectDetail;
