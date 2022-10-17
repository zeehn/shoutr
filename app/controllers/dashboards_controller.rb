class DashboardsController < ApplicationController
  def show
    @shout = current_user.shouts.new
    @shouts = current_user.shouts
  end
end
