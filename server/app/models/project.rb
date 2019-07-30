class Project < ApplicationRecord
  has_many :issues, dependent: :destroy
end
