# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(2)
    # @products = Product.order(:name).page(params[:page]).per(10)
    # @products = Product.paginate(:params[:page], per_page: 12)
  end
end
