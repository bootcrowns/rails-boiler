class DashboardController < ApplicationController
  before_action :authenticate_staff!

  def index
    @staff = current_user
  end
end
