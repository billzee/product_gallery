class ProductsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @products = Product.order :name
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
      flash[:notice] = "Novo Produto registrado"
    else
      render :new
    end
  end

  def new
    @product = Product.new
    render "new"
  end

  def edit
    @product = Product.find(params[:id])
    render "edit"
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
      flash[:notice] = "Produto alterado"
    else
      render "edit"
    end
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :link, :category_id,  {images: []})
  end
end
