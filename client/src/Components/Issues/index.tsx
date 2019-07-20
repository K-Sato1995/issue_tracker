import React from "react";
import { useIssuesQuery } from "../../generated/graphql";
interface IssueProps {
  title: string;
}

const Issue = ({ title }: IssueProps) => {
  const { data, error, loading } = useIssuesQuery();

  if (loading) return <div>Fetching</div>;
  if (error) return <div>Error</div>;
  if (!data) return <div>Data not found</div>;

  return (
    <div>
      {console.log(data)}
      <h1>{title}</h1>
    </div>
  );
};

export default Issue;
