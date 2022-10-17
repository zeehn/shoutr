class UsersController < Clearance::UsersController 
  def show
    @user = User.find(params[:id])
    @shouts = current_user.shouts
  end

private 
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
