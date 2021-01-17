class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @reviews = current_user.reviews
  end
end
