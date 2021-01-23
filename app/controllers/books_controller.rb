class BooksController < ApplicationController
  before_action :review_params

  def create
    Book.create(user_id: current_user.id, review_id: params[:id])
    @review = Review.all
  end

  def destroy
    Book.find_by(user_id: current_user.id, review_id: params[:id]).destroy
  end


  private

  def review_params
    @review = Review.find(params[:id])
  end
end
