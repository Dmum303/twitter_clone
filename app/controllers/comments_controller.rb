class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    params[:user_id] = "6"
    puts "this is here"
    # puts session[:user_id].to_s
    amended_params = comment_params
    amended_params[:user_id] = session[:user_id]
    amended_params[:post_id] = params[:post_id]
    puts amended_params
    @comment = @post.comments.create(amended_params)

    # below looks wrong, is it calling the the create method on the post class?
    # or is it creating a comment in the post colum of db with comment params?
    #  would like to look at whats inside @comment
    # @comment[:user_id] = session[:user_id]
    # @comment[:post_id] = params[:post_id] - post id is in params already!
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end
end
