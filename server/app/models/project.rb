class Project < ApplicationRecord
  has_many :columns, dependent: :destroy
end
