module Mutations
  module Columns
    class CreateColumn < Mutations::BaseMutation
      field :column, Types::ColumnType, null: true

      argument :title, String, required: false
      argument :project_id, ID, required: false

      def resolve(**args)
        project = Project.find(args[:project_id])
        column = project.columns.create(title: args[:title])
        {
          column: column
        }
      end
    end
  end
end
