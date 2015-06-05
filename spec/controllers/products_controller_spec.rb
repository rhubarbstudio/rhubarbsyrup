require 'rails_helper'

RSpec.describe ProductsController, type: :controller do



  describe "GET new" do
      it "returns http success" do
        get :new
        expect(response).to have_http_status(:success)
        
      end
  end

  describe "GET #show" do
    
      it "returns template success code for products show action" do
      product = FactoryGirl.build_stubbed(:product, product_name: "syrup", id: 2)
      get :show, id: product.id
      expect(response).to render_template("show")
      end

      

      it "shows the product" do
        product = FactoryGirl.build(:product, id: 2)
        get :show, :id => product.id
        expect(product.product_name).to eq "syrup"
      end

      it "shows the product" do
        product = FactoryGirl.build(:product, id: 2)
        get :show, :id => product.id
        expect(product.product_name).to_not  eq "dog"
      end
  end

  describe "get edit" do
      
      it "returns http success" do
          product = FactoryGirl.build_stubbed(:product, product_name: "syrup", id: 2)
          get :edit, id: product.id
          expect(response).to have_http_status(:success)
      end

      it "returns template success code for products template edit action" do
      product = FactoryGirl.build_stubbed(:product, product_name: "syrup", id: 2)
      get :edit, id: product.id
      expect(response).to render_template("edit")
      end

     it "edit the product" do
        product = FactoryGirl.build(:product, id: 2)
        get :edit, :id => product.id
        expect(product.product_name).to eq "syrup"
      end 

      it "edit the product" do
        product = FactoryGirl.build(:product, id: 2)
        get :edit, :id => product.id
        expect(product.product_name).to_not eq "dog"
      end 
  end
  describe "get delete" do
      
      it "returns http success" do
          product = FactoryGirl.build_stubbed(:product, product_name: "syrup", id: 2)
          get :edit, id: product.id
          expect(response).to have_http_status(:success)
      end

      it "returns template success code for products template edit action" do
      product = FactoryGirl.build_stubbed(:product, product_name: "syrup", id: 2)
      get :destroy, id: product.id
      expect(response).to render_template("destroy")
      end

      it "should be able to delete a product" do
      product = FactoryGirl.build_stubbed(:product, id: 2)
      get :destroy, id: product.id
      expect(click_link('delete') ).to change(Product, :count).by(-1)
      end
end

  
    
      
    


end
