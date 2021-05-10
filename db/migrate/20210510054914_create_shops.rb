class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :image_id
      t.string :telephone_number
      t.text :introduction
      t.text :url
      t.integer :patissier_id 

      t.timestamps
    end
  end
end
