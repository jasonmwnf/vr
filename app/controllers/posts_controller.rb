class PostsController < ApplicationController
  def index
    @posts = Post.all
    @instagram_feed = Instagram.user_recent_media(412439285).take(12)
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  private

  def instagram_view
    # @instagram = Instagram.user_recent_media("412439285", {:count => 12})
  end
end
