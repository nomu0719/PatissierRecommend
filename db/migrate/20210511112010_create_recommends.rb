class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|
      t.integer :patissier_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
