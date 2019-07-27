module Mutations
  module Users
    class CreateUser < Mutations::BaseMutation
      # often we will need input types for specific mutation
      # in those cases we can define those input types in the mutation class itself
      class AuthProviderSignupData < Types::BaseInputObject
        argument :auth, Types::AuthProviderInput, required: false
      end

      field :user, Types::UserType, null: true
      field :result, Boolean, null: true

      argument :name, String, required: false
      argument :auth_provider, AuthProviderSignupData, required: false

      def resolve(**args)
        user = User.create(
          name: args[:name],
          email: args[:auth_provider]&.[](:auth)&.[](:email),
          password: args[:auth_provider]&.[](:auth)&.[](:password)
        )
        {
          user: user,
          result: user.errors.blank?
        }
      end
    end
  end
end
