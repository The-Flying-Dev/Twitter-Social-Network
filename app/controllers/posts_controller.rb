class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new 
  end 

  def create 
    @post = Post.new(post_params)
    @post.user_id = current_user.id 
    if @post.save
      redirect_to '/posts#index'
    else 
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/', :notice => "Ypur post has been deleted"
  end


  private 

  def post_params
    params.require(:post).permit(:body)
  end 
end
