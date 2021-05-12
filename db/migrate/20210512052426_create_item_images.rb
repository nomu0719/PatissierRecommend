class CreateItemImages < ActiveRecord::Migration[5.2]
  def change
    create_table :item_images do |t|
      t.string :item_image_id
      t.integer :shop_id
      t.integer :patissier_id

      t.timestamps
    end
  end
end
