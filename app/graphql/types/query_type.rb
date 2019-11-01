module Types
  class QueryType < Types::BaseObject
    field :project, Types::ProjectType, null: false do
      argument :id, ID, required: true
    end
    
    field :projects, [ProjectType], null: false,
      description: "A list of all projects within the database" 

    field :task, Types::TaskType, null: false do
      argument :id, ID, required: true
    end

    field :tasks, [TaskType], null: false,
      description: "A list of all Tasks within the database" 
      
    field :column, Types::ColumnType, null: false do
      argument :id, ID, required: true
    end

    field :columns, [ColumnType], null: false,
      description: "A list of all Columns within the database" 

    def project(id:)
      Project.find(id)
    end

    def projects
      Project.all
    end

    def task(id:)
      Task.find(id)
    end

    def tasks
      Task.all
    end
   
    def column(id:)
      Column.find(id)
    end

    def columns
      Column.all
    end
  end
end
