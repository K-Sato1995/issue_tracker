/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: GetProjects
// ====================================================

export interface GetProjects_projects {
  __typename: "Project";
  id: string;
  name: string;
  description: string;
}

export interface GetProjects {
  projects: GetProjects_projects[];
}
