module Types
  class ColumnType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :issues, [Types::IssueType], null: false
  end
end
