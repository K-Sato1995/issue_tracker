module Types
  class QueryType < Types::BaseObject
    field :issues, resolver: Resolvers::Issues::IssuesResolver
    field :categories, resolver: Resolvers::Categories::CategoriesResolver
    field :progresses, resolver: Resolvers::Progresses::ProgressesResolver
  end
end
