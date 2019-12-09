module Types
  class ColumnType < BaseObject
    field :title, String, null: false
    field :project, Types::ProjectType, null: false
    field :tasks, [TaskType], null: false
  end
end