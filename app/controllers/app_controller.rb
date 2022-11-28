class AppController < ApplicationController
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
    @post = Post.new(title: '...', body: '...')

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end
end
