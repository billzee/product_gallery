class ProductsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index]

  def index
    if params[:category_id]
      category_id = params[:category_id]
      @products = Product.where(category_id: category_id).order :name
    else
      @products = Product.order :name
    end
    @products = @products.page(params[:page]).per(2)
  end

  def create
    @product = Product.new(product_params)
    p @product.images
    if @product.save
      redirect_to products_path
      flash[:notice] = "Novo Produto criado"
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
    @product.remove_images!
    @product.save

    if @product.destroy
      redirect_to products_path
      flash[:notice] = "Produto excluído"
    else
      redirect_to products_path
      flash[:notice] = "Erro na exclusão"
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :link, :category_id,  {images: []})
  end
end
