class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.references :gymnasium, foreign_key: true
      t.integer :day, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.text :note

      t.timestamps
    end
  end
end
