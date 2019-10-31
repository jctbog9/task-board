class Project < ApplicationRecord
  validates :title, presence: true

  has_many :columns
  has_many :tasks, through: :columns
end
