module Mutations
  module Users
    class SignInUser < Mutations::BaseMutation
      null true

      argument :auth, Types::AuthProviderInput, required: false

      field :token, String, null: true
      field :user, Types::UserType, null: true

      def resolve(auth: nil)
        # basic validation
        return unless auth

        user = User.find_by email: auth[:email]

        # ensures we have the correct user
        return unless user
        return unless user.authenticate(auth[:password])

        # TODO This setting is not production ready
        # use JWT (https://jwt.io/)
        # use Ruby on Rails - ActiveSupport::MessageEncryptor, to build a token
        crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
        token = crypt.encrypt_and_sign("user-id:#{ user.id }")
        context[:session][:token] = token

        { user: user, token: token }
      end
    end
  end
end
