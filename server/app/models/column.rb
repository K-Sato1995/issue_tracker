class Column < ApplicationRecord
  has_many :issues, dependent: :destroy
end
