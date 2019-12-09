module Types
  class TaskType < BaseObject
    field :id, ID, null: false
    field :body, String, null: false
    field :status, String, null: false
    field :column, Types::ColumnType, null: false
    field :project, Types::ProjectType, null: false

    def status
      self.object.column.title
    end
  end
end