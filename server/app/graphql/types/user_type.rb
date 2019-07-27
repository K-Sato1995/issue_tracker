module Types
  class UserType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    # TODO
    # we are exposing `email` just for tutorial purposes
    # in real application shouldn't leak user emails
    field :email, String, null: true
    field :projects, [Types::ProjectType], null: false
  end
end
