class Issue < ApplicationRecord
  belongs_to :project
  belongs_to :column

  enum priority: { low: 0, normal: 1, high: 2 }
end
