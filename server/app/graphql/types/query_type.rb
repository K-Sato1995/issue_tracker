module Types
  class QueryType < Types::BaseObject
    field :issues, resolver: Resolvers::IssuesResolver
  end
end
