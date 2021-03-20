class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit]
  before_action :move_to_index, except: [:index, :show, :search]


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

  def update
    review = Review.find(params[:id])
    review.update(review_params)
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
    params.require(:review).permit(:image, :title, :genre_id, :text, :rating).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
