module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::Users::CreateUser
    field :signin_user, mutation: Mutations::Users::SignInUser
    field :createProject, mutation: Mutations::Projects::CreateProject
    field :createIssue, mutation: Mutations::Issues::CreateIssue
    field :createProgress, mutation: Mutations::Progresses::CreateProgress
  end
end
