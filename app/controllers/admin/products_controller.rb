class Admin::ProductsController < ApplicationController

  http_basic_authenticate_with name: ENV["USERNAME"].to_s, password: ENV["PASSWORD"].to_s

  before_filter :authorize

  def index
    @products = Product.order(id: :desc).all
    @line_items = LineItem.joins(:product).where(order_id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to [:admin, :products], notice: 'Product created!'
    else
      render :new
    end
  end

  def destroy
    @product = Product.find params[:id]
      unless @product.line_items.any?
      @product.destroy
      redirect_to [:admin, :products], notice: 'Product deleted!'
    else
      redirect_to [:admin, :products], notice: 'Orders have been placed in your database with this product'
    end
  end
    

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end

end
