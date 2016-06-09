class CreateAssumptions < ActiveRecord::Migration
  def change
    create_table :assumptions do |t|
      t.text :connector
      t.text :body
      t.integer :setup_id

      t.timestamps

    end
  end
end
