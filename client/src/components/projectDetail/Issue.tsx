import React from "react";
import { GetProject_project_columns_issues } from "__types__/GetProject";
import styled from "styled-components";
import { Draggable } from "react-beautiful-dnd";

const Container = styled.div`
  boder: 1px solid lightgrey important;
  border-radius: 2px;
  padding: 8px;
  margin-bottom: 8px;
  background-color: white;
`;

const Issue: React.FC<{
  issue: GetProject_project_columns_issues;
  index: number;
}> = ({ issue, index }) => {
  return (
    <Draggable draggableId={issue.id} index={index}>
      {provided => (
        <Container
          {...provided.draggableProps}
          {...provided.dragHandleProps}
          innerRef={provided.innerRef}
        >
          {issue.title}
        </Container>
      )}
    </Draggable>
  );
};

export default Issue;
