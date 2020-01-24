/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: GetProject
// ====================================================

export interface GetProject_project_issues {
  __typename: "Issue";
  id: string;
  title: string;
  description: string;
  status: number;
  priority: number;
  deadline: any;
}

export interface GetProject_project {
  __typename: "Project";
  id: string;
  name: string;
  description: string;
  issues: GetProject_project_issues[];
}

export interface GetProject {
  project: GetProject_project;
}

export interface GetProjectVariables {
  id: string;
}
