class UsersController < ApplicationController
  before_action :authorize
  def show
    @user = User.find(params[:id])
  end

  private
  def authorize
    if current_user.id.to_s != params[:id]
      flash[:error] = "허용되지 않은 접근입니다"
      redirect_to root_path
    end
  end
end
