class PhotosController < ApplicationController
  before_filter :authenticate
  before_filter :load_photos

  def index
    @photo = Photo.new
  end

  def create
    @photo = Photo.new params[:photo]

    if @photo.save
      flash[:notice] = 'Foto enviada com sucesso.'
      redirect_to photos_path
    else
      render :action => 'index'
    end
  end

  def destroy
    @photo = Photo.find params[:id]
    @photo.destroy
    flash[:notice] = 'Foto removida com sucesso.'
    redirect_to photos_path
  end

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'zztott'
    end
  end

  private
  def load_photos
    @grouped_photos = Photo.all.group_by &:photo_kind
  end
end
