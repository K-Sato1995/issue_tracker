module Resolvers
  module Progresses
    class ProgressResolver < Resolvers::BaseResolver
      type Types::ProgressType, null: false
      argument :id, ID, required: false

      def resolve(**args)
        Progress.find(args[:id])
      end
    end
  end
end
