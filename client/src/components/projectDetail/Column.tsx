import React from "react";
import styled from "styled-components";
import Issue from "components/projectDetail/Issue";
import { GetProject_project_columns } from "__types__/GetProject";
import { Droppable } from "react-beautiful-dnd";

const Container = styled.div`
  margin: 8px;
  border: 1px solid lightgrey;
  border-radius: 2px;
`;
const Title = styled.h3`
  padding: 8px;
`;
const IssueList = styled.div`
  padding: 8px;
`;

const Column: React.FC<{ column: GetProject_project_columns }> = ({
  column
}) => {
  return (
    <Container>
      <Title>{column.title}</Title>
      <Droppable droppableId={column.id}>
        {provided => (
          <IssueList innerRef={provided.innerRef} {...provided.droppableProps}>
            {column.issues.map((issue, index) => (
              <Issue key={issue.id} issue={issue} index={index} />
            ))}
            {provided.placeholder}
          </IssueList>
        )}
      </Droppable>
    </Container>
  );
};

export default Column;
