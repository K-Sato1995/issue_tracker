module Types
  class MutationType < Types::BaseObject
    field :createCategory, mutation: Mutations::Categories::CreateCategory
    field :createIssue, mutation: Mutations::Issues::CreateIssue
  end
end
