class AddIngredientsProductsIdToInstances < ActiveRecord::Migration
  def change
  	add_column :instances, :ingredients_products_id, :integer
  end
end
