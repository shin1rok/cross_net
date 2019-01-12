class CreateGymnasia < ActiveRecord::Migration[5.2]
  def change
    create_table :gymnasia do |t|
      t.string :name, null: false
      t.string :zip_code, null: false
      t.integer :prefecture, null: false
      t.string :city, null: false
      t.string :street, null: false
      t.string :tell, null: false
      t.string :url, null: false
      t.text :access, null: false
      t.string :court
      t.text :note

      t.timestamps
    end
  end
end
