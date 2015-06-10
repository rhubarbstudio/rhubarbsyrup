class DropInstanceIdFromIngredientsProductTable < ActiveRecord::Migration
  def up
  	remove_column :ingredients_products, :instance_id

  end

  def down
  	add_column :ingredients_products, :instance_id, :integer
  	
  end
end
