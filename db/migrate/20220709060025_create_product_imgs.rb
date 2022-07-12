class CreateProductImgs < ActiveRecord::Migration[6.1]
  def change
    create_table :product_imgs do |t|
      t.string :img
      t.text :des
      t.references :products, polymorphic: { default: "Photo" }, index: true
      t.timestamps
    end
  end
end
