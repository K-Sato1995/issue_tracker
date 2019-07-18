module Types
  class MutationType < Types::BaseObject
    field :createCategory, mutation: Mutations::CreateCategory
  end
end
