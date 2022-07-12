class ProductController < ApplicationController
  before_action :find_product, only: [:shwo, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product =
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :product_imgs_attributes => [:img, :des])
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
