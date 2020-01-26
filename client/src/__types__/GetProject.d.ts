/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: GetProject
// ====================================================

export interface GetProject_project_columns_issues {
  __typename: "Issue";
  title: string;
  id: string;
  description: string;
  priority: number;
  deadline: any;
}

export interface GetProject_project_columns {
  __typename: "Column";
  title: string;
  issues: GetProject_project_columns_issues[];
}

export interface GetProject_project {
  __typename: "Project";
  id: string;
  name: string;
  description: string;
  columns: GetProject_project_columns[];
}

export interface GetProject {
  project: GetProject_project;
}

export interface GetProjectVariables {
  id: string;
}
