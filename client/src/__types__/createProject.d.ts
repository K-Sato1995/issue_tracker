/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL mutation operation: createProject
// ====================================================

export interface createProject_createProject_project {
  __typename: "Project";
  id: string;
  name: string;
  description: string;
}

export interface createProject_createProject {
  __typename: "CreateProjectPayload";
  project: createProject_createProject_project | null;
}

export interface createProject {
  createProject: createProject_createProject | null;
}

export interface createProjectVariables {
  name: string;
  description: string;
}
