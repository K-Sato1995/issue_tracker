module Mutations
  module Users
    class SignOutUser < Mutations::BaseMutation
      null true

      argument :auth, Types::AuthProviderInput, required: false

      field :user, Types::UserType, null: true

      def resolve(auth: nil)
        return unless auth

        user = User.find_by email: auth[:email]

        return unless user
        return unless user.authenticate(auth[:password])

        context[:session][:token] = ''

        { user: user }
      end
    end
  end
end
