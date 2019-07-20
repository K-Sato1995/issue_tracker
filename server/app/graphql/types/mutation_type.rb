module Types
  class MutationType < Types::BaseObject
    field :createCategory, mutation: Mutations::Categories::CreateCategory
    field :createIssue, mutation: Mutations::Issues::CreateIssue
    field :createProgress, mutation: Mutations::Progresses::CreateProgress
  end
end
