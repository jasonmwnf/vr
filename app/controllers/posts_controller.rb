class PostsController < ApplicationController
  before_filter :instagram_view
  def index
    @posts = Post.all
    @instagram_feed = Instagram.user_recent_media(412439285).take(12)
  end

  def show
    @post = Post.friendly.find(params[:id])
    @comment = @post.comments.new
  end

  private

  def instagram_view
    @instagram_feed = Instagram.user_recent_media(412439285).take(12)
  end
end
