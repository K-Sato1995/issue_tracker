class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :title, null: false
      t.references :project, index: true
      t.timestamps
    end
  end
end
