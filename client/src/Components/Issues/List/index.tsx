import React from "react";
import Item from "./Item";

interface IssueProps {
  issues: {
    id: string;
    title: string;
    description: string;
    priority: number;
    status: number;
    deadline: string;
  }[];
}

const List = ({ issues }: IssueProps) => {
  return (
    <ul>
      {issues.map(issue => (
        <Item id={issue.id} title={issue.title} />
      ))}
    </ul>
  );
};

export default List;
