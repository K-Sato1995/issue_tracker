module Mutations
  module Projects
    class CreateProject < Mutations::BaseMutation
      field :project, Types::ProjectType, null: true
      field :result, Boolean, null: true

      argument :name, String, required: false
      argument :description, String, required: false

      def resolve(**args)
        project = Project.create(name: args[:name], description: args[:description])
        {
          project: project,
          result: project.errors.blank?
        }
      end
    end
  end
end
