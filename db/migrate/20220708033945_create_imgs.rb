class CreateImgs < ActiveRecord::Migration[6.1]
  def change
    create_table :imgs do |t|
      t.integer :product_id
      t.string :des
      t.string :img

      t.timestamps
    end
    add_index :imgs, :img
  end
end
