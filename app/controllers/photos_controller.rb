class PhotosController < ApplicationController

  def index
  end

  def show
    set_photo

    respond_to do |format|
      format.html
    end
  end

  def create
  end

  def new
  end

  private

    def set_photo
      @photo = Photo.find params[:id]
    end
end
