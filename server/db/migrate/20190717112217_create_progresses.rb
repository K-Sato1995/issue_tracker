class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.text :description, null: false
      t.integer :spent_time, default: 0
      t.datetime :date, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :issue, index: true, foreign_key: true

      t.timestamps
    end
  end
end
