class ShoutsController < ApplicationController 
  def create
    @shout = current_user.shouts.new(shout_params)
    if @shout.save
      redirect_to dashboard_path, notice: "Shouted Successfully!"
    else
      redirect_to dashboard_path, alert: "Could not shout."
    end
  end

  def show
    @shout = Shout.find(params[:id])  
  end

  private
  def shout_params
    params.require(:shout).permit(:body)
  end
  

end
