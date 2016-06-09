class CreateSecondstories < ActiveRecord::Migration
  def change
    create_table :secondstories do |t|
      t.text :punch_line
      t.text :body
      t.integer :reinterpretation_id

      t.timestamps

    end
  end
end
