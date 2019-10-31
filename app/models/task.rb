class Task < ApplicationRecord
  validates :body, presence: true

  belongs_to :column
  belongs_to :project
end
