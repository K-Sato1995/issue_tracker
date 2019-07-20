module Mutations
  module Progresses
    class CreateProgress < Mutations::BaseMutation
      field :progress, Types::ProgressType, null: true
      field :result, Boolean, null: true

      argument :description, String, required: false
      argument :spent_time, Int, required: false
      argument :issue_id, ID, required: false

      def resolve(**args)
        issue = Issue.find(args[:issue_id])
        progress = issue.progresses.create(description: args[:description], spent_time: args[:spent_time])
        {
          progress: progress,
          result: progress.errors.blank?
        }
      end
    end
  end
end
