# frozen_string_literal: true

# DashboardController - home page or dashboard actions for users
class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    unless User.uploaded_daily_photo?(current_user.id)
      render 'photos/upload'
    end

    current_date = DateTime.current
    @photo = current_user.photos.find_by(upload_date: current_date)
  end

  def about
    @about = 'chocolate lab'
  end
end
