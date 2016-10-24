class ProductsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @products = Product.order :name
    respond_to do |format|
      format.html
      format.json { render json: @products }
    end
  end

  def create
    @brand = Product.new(product_params)
    if @brand.save
      redirect_to products_path
      flash[:notice] = "Novo Produto registrado"
    else
      render :new
    end
  end

  def new
    @brand = Product.new
    render "new"
  end

  def edit
    @brand = Product.find(params[:id])
    render "edit"
  end

  def update
    @brand = Product.find(params[:id])
    if @brand.update(product_params)
      redirect_to products_path
      flash[:notice] = "Produto alterada"
    else
      render "edit"
    end
  end

  def destroy
    @brand = Product.find params[:id]
    @brand.destroy
  end

  private

  def product_params
    params.require(:brand).permit(:name)
  end
end
