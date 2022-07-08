class RemoveImgFromImg < ActiveRecord::Migration[6.1]
  def change
    remove_column :imgs, :img
    add_column :imgs, :img, :string
  end
end
