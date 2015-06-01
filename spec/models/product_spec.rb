require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "Product" do
  
	it "should validate_presence_of :prodcut_name"  do
	    product = FactoryGirl.build(:product, product_name: "syrup")
	    expect(product).to be_valid
	    
	   end

   it "should validate_presence_of :prodcut_name"  do
	    product = FactoryGirl.build(:product, product_name: "")
	    expect(product).to_not be_valid
	    
	   end
  end
end
