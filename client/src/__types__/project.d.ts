/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: project
// ====================================================

export interface project_project {
  __typename: "Project";
  id: string;
  name: string;
  description: string;
}

export interface project {
  project: project_project;
}

export interface projectVariables {
  id: string;
}
