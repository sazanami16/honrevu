class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to "/reviews/#{@comment.review.id}"
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, review_id: params[:review_id])
  end
end
