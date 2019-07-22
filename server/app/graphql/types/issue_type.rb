module Types
  class IssueType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :status, Int, null: false
    field :priority, Int, null: false
    field :deadline, Types::DateTimeType, null: false
    field :progresses, [Types::ProgressType], null: false
    field :project, Types::ProjectType, null: false
  end
end
