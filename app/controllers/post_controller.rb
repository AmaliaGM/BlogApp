class PostController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: '...', body: '...')

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end
end
