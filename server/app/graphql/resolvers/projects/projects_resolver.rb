module Resolvers
  module Projects
    class ProjectsResolver < Resolvers::BaseResolver
      type [Types::ProjectType], null: false

      def resolve(**_args)
        Project.all
      end
    end
  end
end
