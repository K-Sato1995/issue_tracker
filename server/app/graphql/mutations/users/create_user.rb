module Mutations
  module Users
    class CreateUser < Mutations::BaseMutation
      # often we will need input types for specific mutation
      # in those cases we can define those input types in the mutation class itself
      class AuthProviderSignupData < Types::BaseInputObject
        argument :auth, Types::AuthProviderInput, required: false
      end

      field :user, Types::UserType, null: true
      field :errors, [String], null: false

      argument :name, String, required: false
      argument :auth_provider, AuthProviderSignupData, required: false

      def resolve(**args)
        user = User.new(
          name: args[:name],
          email: args[:auth_provider]&.[](:auth)&.[](:email),
          password: args[:auth_provider]&.[](:auth)&.[](:password)
        )
        if user.save
          {
            user: user,
            errors: []
          }
        else
          {
            user: nil,
            errors: user.errors.full_messages
          }
        end
      end
    end
  end
end
