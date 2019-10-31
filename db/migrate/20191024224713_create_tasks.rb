class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :body

      t.belongs_to :project
      t.belongs_to :column

      t.timestamps null: false
    end
  end
end
