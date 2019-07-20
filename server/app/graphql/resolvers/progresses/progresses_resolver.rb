module Resolvers
  module Progresses
    class ProgressesResolver < Resolvers::BaseResolver
      type [Types::ProgressType], null: false

      def resolve(**_args)
        Progress.all
      end
    end
  end
end
