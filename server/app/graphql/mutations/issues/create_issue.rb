module Mutations
  module Issues
    class CreateIssue < Mutations::BaseMutation
      field :issue, Types::IssueType, null: true
      field :result, Boolean, null: true

      argument :title, String, required: false
      argument :description, String, required: false
      argument :status, Int, required: false
      argument :priority, Int, required: false
      argument :deadline, Int, required: false
      argument :category_id, ID, required: false

      def resolve(**args)
        category = Category.find(args[:category_id])
        issue = category.issues.create(title: args[:title],
                                       description: args[:description],
                                       status: args[:status],
                                       priority: args[:priority],
                                       deadline: args[:deadline])
        {
          issue: issue,
          result: issue.errors.blank?
        }
      end
    end
  end
end
