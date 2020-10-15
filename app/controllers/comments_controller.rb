class CommentsController < ApplicationController
  
  def index
    @comment = Comment.all
  end

  def new
    @post_id = params[:post_id]
    @comment = Comment.new(:post_id => params[:post_id])
  end

  def edit
  end

  def create
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    # @comment.post_id = post_id
    @comment.save

    redirect_to post_path(@comment.post_id)
  end

  def show
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@@current_post_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

end
