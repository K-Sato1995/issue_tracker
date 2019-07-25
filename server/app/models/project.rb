class Project < ApplicationRecord
  has_many :issues, dependent: :destroy
  belongs_to :user
end
