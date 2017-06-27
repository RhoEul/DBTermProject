class AdminController < ApplicationController
  http_basic_authenticate_with name: "rhoeulski", password: "jamongski"

  def index
    @users = User.all
  end
end
