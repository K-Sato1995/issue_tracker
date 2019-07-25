module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :issues, [Types::IssueType], null: false
    field :user, UserType, null: false, method: :user
  end
end
