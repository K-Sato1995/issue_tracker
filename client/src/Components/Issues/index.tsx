import React from "react";
import List from "./List";
import { useIssuesQuery } from "../../generated/graphql";

const Issue = () => {
  const { data, error, loading } = useIssuesQuery();

  if (loading) return <div>Fetching</div>;
  if (error) return <div>Error</div>;
  if (!data) return <div>Data not found</div>;

  return (
    <div>
      <ul>
        {console.log(data.issues)}
        <List issues={data.issues} />
      </ul>
    </div>
  );
};

export default Issue;
