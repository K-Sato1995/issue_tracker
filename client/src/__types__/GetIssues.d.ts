/* tslint:disable */
/* eslint-disable */
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: GetIssues
// ====================================================

export interface GetIssues_issues {
  __typename: "Issue";
  id: string;
  title: string;
  description: string;
  status: number;
  priority: number;
  deadline: any;
}

export interface GetIssues {
  issues: GetIssues_issues[];
}
