class DensController < ApplicationController
  before_action :authenticate_user!

  def index
    @adam = "meatball"
    @capybara = "cappy cappy barrraaaa"
  end
end