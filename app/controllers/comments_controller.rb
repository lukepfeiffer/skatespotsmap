class CommentsController < ApplicationController

  def create
    @spot = Spot.find(comment_params[:spot_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to spot_path(@spot)
    else
      redirect_to spot_path(@spot)
    end
  end

  def comment_params
    params.require(:comment).permit(
      :comment,
      :user_id,
      :spot_id
    )
  end
end
