class ProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :show, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Object successfully created"
      redirect_to products_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:success] = "Object was successfully updated"
      redirect_to products_path
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    if @product.destroy
      flash[:success] = "Object was successfully deleted."
      redirect_to products_url
    else
      flash[:error] = "Something went wrong"
      redirect_to products_url
    end
  end

  def upload_img
    @img = self.product.img.new(img_params)
  end

  protected

  def product_params
    params.require(:product).permit(:title, :description, :imgs_attribute => [:img])
  end

  def find_product
    @product = Product.find_by(id: params[:id])
  end
end
