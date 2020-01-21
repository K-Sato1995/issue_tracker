/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL mutation operation: CreateProject
// ====================================================

export interface CreateProject_createProject_project {
  __typename: "Project";
  id: string;
  name: string;
  description: string;
}

export interface CreateProject_createProject {
  __typename: "CreateProjectPayload";
  project: CreateProject_createProject_project | null;
}

export interface CreateProject {
  createProject: CreateProject_createProject | null;
}

export interface CreateProjectVariables {
  name: string;
  description: string;
}
