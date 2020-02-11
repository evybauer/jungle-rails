require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with name, price, quantity and category" do 
      @category = Category.new(name: "Test")
      @product = Product.new(name: "Invisible Jacket", price_cents: 500, quantity: 20, :category => @category)
      @product.valid?
      expect(@product.errors).not_to include("Cannot be blank")
    end
    it "is valid with name" do 
      @category = Category.new(name: "Test")
      @product = Product.new(name: "Invisible Jacket", price_cents: 500, quantity: 20, :category => @category)
      @product.valid?
      expect(@product.errors[:name]).not_to include("Cannot be blank")
    end
    it "is valid with name" do 
      @category = Category.new(name: "Test")
      @product = Product.new(name: "Invisible Jacket", price_cents: 500, quantity: 20, :category => @category)
      @product.valid?
      expect(@product.errors[:price]).not_to include("Cannot be blank")
    end
    it "is valid with name" do 
      @category = Category.new(name: "Test")
      @product = Product.new(name: "Invisible Jacket", price_cents: 500, quantity: 20, :category => @category)
      @product.valid?
      expect(@product.errors[:quantity]).not_to include("Cannot be blank")
    end
    it "is valid with name" do 
      @category = Category.new(name: "Test")
      @product = Product.new(name: "Invisible Jacket", price_cents: 500, quantity: 20, :category => @category)
      @product.valid?
      expect(@product.errors[:category]).not_to include("Cannot be blank")
    end
  end
end


