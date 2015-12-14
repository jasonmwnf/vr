class CommentsController < ApplicationController
  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to @post
      flash[:notice] = "Your comment has been added"
    else
      redirect_to post_path(@post)
      flash[:notice] = "Your comment has not been created."
    end
  end


  private

  def comment_params
    params.require(:comment).permit!
  end
end
