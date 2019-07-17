module Resolvers
  class CategoriesResolver < Resolvers::BaseResolver
    type [Types::CategoryType], null: false

    def resolve(**_args)
      Category.all
    end
  end
end
