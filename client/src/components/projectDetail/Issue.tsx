import React from "react";
import { GetProject_project_columns_issues } from "__types__/GetProject";
import styled from "styled-components";

const Container = styled.div`
  boder: 1px solid lightgrey !important;
  border-radius: 2px;
  padding: 8px;
  margin-bottom: 8px;
`;

const Issue: React.FC<{ issue: GetProject_project_columns_issues }> = ({
  issue
}) => {
  return <Container>{issue.title}</Container>;
};

export default Issue;
