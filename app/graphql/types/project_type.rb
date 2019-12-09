module Types
  class ProjectType < BaseObject
    field :title, String, null: false
    field :description, String, null: false
    field :columns, [ColumnType], null: false
    field :tasks, [TaskType], null: false
  end
end