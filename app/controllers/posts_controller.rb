class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def edit
    # method inherited from app_con
    if !logged_in?
      #redirect to standard index
    else
      #do cool stuff
    end
  end
end
