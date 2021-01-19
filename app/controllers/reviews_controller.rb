class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  def edit
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to root_path
  end

  def set_review
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:title, :text).merge(user_id: current_user.id)
  end
end
