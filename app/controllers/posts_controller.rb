class PostsController < ApplicationController
  def index
    @posts = Post.all
    @author = User.all
    render layout: "three_column"
  end

  def create
    Post.create(user_params)
    redirect_to posts_index_url
  end

  def view
  end

  private
  def user_params
    params.require(:post).permit(:title, :content, :user_id)
  end 
end
