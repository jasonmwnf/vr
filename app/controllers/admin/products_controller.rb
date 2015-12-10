class Admin::ProductsController < AdminsController
  def index
  end

  def show
   find_product
  end

  def edit
   find_product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
      flash[:notice] = "Product created successfully"
    else
      render :new
      flash[:notice] = "Please there was an error with your product please fill out all fields."
    end
  end

  def update
    find_product
    @product.update_attributes(product_params)
    redirect_to edit_admin_product_path(@product)
  end

  def delete
    find_product
    @product.destroy
    redirect_to admin_products_path
    flash[:notice] = "Product deleted"
  end

  private
  def find_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit!
  end
end
