class CreateReinterpretations < ActiveRecord::Migration
  def change
    create_table :reinterpretations do |t|
      t.text :connector
      t.integer :assumption_id
      t.text :body

      t.timestamps

    end
  end
end
