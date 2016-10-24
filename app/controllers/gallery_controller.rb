class GalleryController < ApplicationController
  def index
    @products = Product.order :name
    render template: "products/index"
  end
end
