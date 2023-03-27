# frozen_string_literal: true

# DashboardController - home page or dashboard actions for users
class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @capybara = 'cappy cappy barrraaaa'
  end

  def about
    @about = 'chocolate lab'
  end
end
