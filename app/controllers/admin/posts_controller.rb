class Admin::PostsController < AdminsController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def edit
    @post = Post.friendly.find(params[:id])
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
    @post = Post.friendly.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit!
  end
end