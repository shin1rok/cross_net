class ChengeColumnToGymnasia < ActiveRecord::Migration[5.2]
  def change
    remove_column :gymnasia, :prefecture, :integer, null: false
    add_reference :gymnasia, :prefecture, foreign_key: true, after: :zip_code
  end
end
