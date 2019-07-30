module Types
  class MutationType < Types::BaseObject
    field :createProject, mutation: Mutations::Projects::CreateProject
    field :updateProject, mutation: Mutations::Projects::UpdateProject
    field :createIssue, mutation: Mutations::Issues::CreateIssue
    field :createProgress, mutation: Mutations::Progresses::CreateProgress
  end
end
