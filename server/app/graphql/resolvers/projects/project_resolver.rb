module Resolvers
  module Projects
    class ProjectResolver < Resolvers::BaseResolver
      type Types::ProjectType, null: false
      argument :id, ID, required: false

      def resolve(**args)
        Project.find(args[:id])
      end
    end
  end
end
