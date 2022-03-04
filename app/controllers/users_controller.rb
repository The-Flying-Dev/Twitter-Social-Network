class UsersController < ApplicationController
  
  def profile
    @user_id = params[:id]
    @userinfo = User.find(params[:user_id])
    @usercount = @userinfo.posts
    @posts = Post.all
end
