class UserController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])
    @post = Post.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = user.new(title: '...', body: '...')

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
end
