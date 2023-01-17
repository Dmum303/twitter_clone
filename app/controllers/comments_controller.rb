class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    amended_params = comment_params
    amended_params[:user_id] = session[:user_id]
    amended_params[:post_id] = params[:post_id]
    @comment = @post.comments.create(amended_params)

    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end
end
