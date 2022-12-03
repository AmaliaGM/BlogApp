class CommentsController < ApplicationController
  def list
    @comments = Comment.all
  end

  def index
    @user = User.find(params[:user_id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }

        def comment_params
          params.require(:comment).permit(:author => :current_user)
        end
      end
  end
end
