class CreateProductIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients_products do |t|
    	t.belongs_to :product, index: true
    	t.belongs_to :ingredient, index: true
    	t.belongs_to :instance, index: true

      t.timestamps
    end
  end
end
