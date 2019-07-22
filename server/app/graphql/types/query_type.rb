module Types
  class QueryType < Types::BaseObject
    field :issues, resolver: Resolvers::Issues::IssuesResolver
    field :projects, resolver: Resolvers::Projects::ProjectsResolver
    field :progresses, resolver: Resolvers::Progresses::ProgressesResolver
  end
end
