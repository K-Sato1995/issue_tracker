module Types
  class QueryType < Types::BaseObject
    field :issues, resolver: Resolvers::IssuesResolver
    field :categories, resolver: Resolvers::CategoriesResolver
  end
end
