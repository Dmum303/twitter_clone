class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post[:user_id] = session[:user_id]
    # this part could be an issue with the comments
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path, status: :see_other
  end

  # def edit
  #   # method inherited from app_con
  #   if !logged_in?
  #     #redirect to standard index
  #   else
  #     #do cool stuff
  #   end
  # end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
  end
end
