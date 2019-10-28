class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :title, null: false

      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
