class BlogAppController < ApplicationController
  def list
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @users = User.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to action: 'list'
    else
      @users = User.all
      render action: 'new'
    end
  end

  def post_params
    params.require(:posts).permit(:title, :author, :user_id, :comments, :likes)
  end

  def edit
    @post = Post.find(params[:id])
    @users = User.all
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_param)
      redirect_to action: 'show', id: @post
    else
      @users = User.all
      render action: 'edit'
    end
  end

  def post_param
    params.require(:post).permit(:title, :author, :user_id, :comments, :likes)
  end

  def delete
    Post.find(params[:id]).destroy
    redirect_to action: 'list'
  end

  def show_users
    @user = User.find(params[:id])
  end
end
