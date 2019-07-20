module Types
  class MutationType < Types::BaseObject
    field :createCategory, mutation: Mutations::CreateCategory
    field :createIssue, mutation: Mutations::CreateIssue
  end
end
