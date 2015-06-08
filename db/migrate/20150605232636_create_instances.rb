class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.datetime :instance_date
      t.text :note
      t.text :image
     

      t.timestamps
    end
  end
end
