module Mutations
  module Categories
    class CreateCategory < Mutations::BaseMutation
      field :category, Types::CategoryType, null: true
      field :result, Boolean, null: true

      argument :name, String, required: false
      argument :description, String, required: false

      def resolve(**args)
        category = Category.create(name: args[:name], description: args[:description] )
        {
          category: category,
          result: category.errors.blank?
        }
      end
    end
  end
end
