import React from "react";
import { Query } from "react-apollo";
import { gql } from "apollo-boost";

export const Test = () => (
  <Query
    query={gql`
      {
        issues {
          title
        }
      }
    `}
  >
    {({ loading, error, data }) => {
      if (loading) return <p>Loading...</p>;
      if (error) return <p>Error :(</p>;

      return (
        <div>
          {console.log(data)}
          <p>yoyoy</p>
        </div>
      );
    }}
  </Query>
);
