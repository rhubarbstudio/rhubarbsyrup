require 'rails_helper'

RSpec.describe ProductsController, type: :controller do



describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
      
    end
  end

# describe "GET show" do
  
#     it "returns http success code for products show action" do
#       #product = FactoryGirl.build_stubbed(:product, id: 1)
# 	    get :show
# 	    expect(response).to have_http_status(:success)
#     end
# end

describe "GET #show" do
  
    it "returns http success code for products show action" do
    product = FactoryGirl.build_stubbed(:product, product_name: "syrup", id: 2)
    get :show, id: product.id
    expect(response).to render_template("show")
    end

    

    it "shows the product" do
      product = FactoryGirl.build(:product, id: 2)
      get :show, :id => product.id
      expect(product.product_name).to eq "syrup"
    end
  end



end
