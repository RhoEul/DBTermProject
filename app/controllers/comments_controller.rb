class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.list = List.find(params[:list_id])
    @comment.user = current_user
    if @comment.save
      flash[:success] = "댓글이 생성되었습니다!"
    else
      flash[:failure] = "댓글 생성에 실패했습니다. 잠시 후 다시 시도해주세요"
    end

    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit!
  end
end
