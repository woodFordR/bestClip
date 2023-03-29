# frozen_string_literal: true

require "image_processing/vips"

# PhotosController -
  # create: adds & uploads new photo for user
  # view: show photo
  # delete: delete photos
class PhotosController < ApplicationController

  def upload
    @photo = Photo.new
  end

  def create
    @photo = Photo.new({
      image: photo_params['image'],
      name: photo_params['image.filename'],
      upload_date: DateTime.current,
      user: current_user
    })
    binding.b
    if @photo.save
      redirect_to root_url, notice: "Nice Photo!"
    else
      flash.now[:error] = "Error creating photo ..."
      render :upload
    end
  end

  def view
  end
  
  def delete
  end
  
  private

  def photo_params
    params.require(:photo).permit(:image, :name)
  end
end
