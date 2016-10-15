class GalleryController < ApplicationController
  before_action :authenticate_admin!

  def index
    render :index
  end
end
