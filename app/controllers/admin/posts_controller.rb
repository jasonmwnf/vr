class Admin::PostsController < AdminsController
  def index
    @posts = Post.all
  end

  def show
    find_post
  end

  def edit
    find_post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      flash[:notice] = "Do not forget the title"
      render :new
    end
  end

  def update
    find_post
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end

  end

  def destroy
    find_post
    @post.destroy
    redirect_to admin_posts_path
    flash[:notice] = "Post Deleted"
  end

  private

  def find_post
    @post = Post.friendly.find(params[:id])
  end


  def post_params
    params.require(:post).permit!
  end
end