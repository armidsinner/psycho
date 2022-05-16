class PersonsController < ApplicationController
  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @post
    else
      render 'posts/show'
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user = current_user
      @comment.destroy
      redirect_to @comment.post
    else
      head :forbidden 
    end
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:description)
  end
  
end
