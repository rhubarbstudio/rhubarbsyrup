class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.date :instance_date
      t.text :note
      t.text :image
      t.integer :ingredient_product_id

      t.timestamps
    end
  end
end
