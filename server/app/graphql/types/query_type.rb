module Types
  class QueryType < Types::BaseObject
    field :issues, resolver: Resolvers::Issues::IssuesResolver
    field :issue, resolver: Resolvers::Issues::IssueResolver
    field :projects, resolver: Resolvers::Projects::ProjectsResolver
    field :project, resolver: Resolvers::Projects::ProjectResolver
  end
end
