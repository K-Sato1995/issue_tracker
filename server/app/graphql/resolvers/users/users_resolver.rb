## TODO DEVELOPMENT ENV ONLY
## Delete this resolver before deploying to the server
module Resolvers
  module Users
    class UsersResolver < Resolvers::BaseResolver
      type [Types::UserType], null: false

      def resolve(**_args)
        User.all
      end
    end
  end
end
