class PostController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: '...', body: '...')

    if @post.save
      redirect_to @comments
    else
      render :new, status: :unprocessable_entity
    end
  end
end
