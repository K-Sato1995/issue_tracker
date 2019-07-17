module Types
  class IssueType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :progresses, [Types::ProgressType], null: false
  end
end
