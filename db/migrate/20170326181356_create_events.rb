class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :calendar_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
