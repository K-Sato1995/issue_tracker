module Types
  class QueryType < Types::BaseObject
    field :issues, resolver: Resolvers::IssueResolver
  end
end
