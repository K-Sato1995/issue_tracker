class Issue < ApplicationRecord
  has_many :progresses, dependent: :destroy
  belongs_to :project

  enum status: { todo: 0, wip: 1, done: 2 }
  enum priority: { low: 0, normal: 1, high: 2 }
end
