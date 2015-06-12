class RecreateInstancesTable < ActiveRecord::Migration
  def change
  	create_table :instances do |t|
      t.datetime :instance_date
      t.text :note
      t.text :image
      t.belongs_to :product
      t.belongs_to :ingredient
      t.timestamps
    end
  end
end
