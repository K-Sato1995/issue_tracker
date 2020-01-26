module Types
  class IssueType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :priority, Int, null: false
    field :deadline, Types::DateTimeType, null: false
    field :column, Types::ColumnType, null: false
  end
end
