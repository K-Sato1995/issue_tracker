import React from "react";
import styled from "styled-components";
import Issue from "components/projectDetail/Issue";
import { GetProject_project_columns } from "__types__/GetProject";

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
      <IssueList>
        {column.issues.map(issue => (
          <Issue key={issue.id} issue={issue} />
        ))}
      </IssueList>
    </Container>
  );
};

export default Column;
