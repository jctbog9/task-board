class Column < ApplicationRecord
  validates :title, presence: true

  belongs_to :project
  
  has_many :tasks
end
