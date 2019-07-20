module Types
  class ProgressType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: false
    field :spent_time, Int, null: false
    field :issue, Types::IssueType, null: false
  end
end
