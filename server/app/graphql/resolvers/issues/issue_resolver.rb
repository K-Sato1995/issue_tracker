module Resolvers
  module Issues
    class IssueResolver < Resolvers::BaseResolver
      type Types::IssueType, null: false
      argument :id, ID, required: false

      def resolve(**args)
        Issue.find(args[:id])
      end
    end
  end
end
