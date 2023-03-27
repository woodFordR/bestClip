class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @capybara = "cappy cappy barrraaaa"
  end

  def about
    @about = "chocolate lab"
  end
end