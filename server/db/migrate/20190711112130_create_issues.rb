class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :status, null: false, default: 0
      t.integer :priority, null: false, default: 0
      t.datetime :deadline, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :category, index: true

      t.timestamps
    end
  end
end
