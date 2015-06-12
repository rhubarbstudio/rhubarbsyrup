class AddProductIdAndIngredientIdToInstances < ActiveRecord::Migration
  def change
  	add_column :instances, :product_id, :integer
  	add_column :instances, :ingredient_id, :integer
  end
end
