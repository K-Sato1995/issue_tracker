module Resolvers
  module Issues
    class IssuesResolver < Resolvers::BaseResolver
      type [Types::IssueType], null: false

      def resolve(**_args)
        Issue.all
      end
    end
  end
end
