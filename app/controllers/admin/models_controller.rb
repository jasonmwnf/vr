class Admin::ModelsController < AdminsController
  def index
    @models = Model.all
  end

  def show

  end

  def edit
    find_model
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_params)
    if @model.save
      redirect_to admin_models_path
      flash[:notice] = "Model created"
    else
      render :new
    end
  end

  def update
    find_model
    @model.update(model_params)
    redirect_to admin_models_path
    flash[:notice] = "Model updated"
  end

  def destroy
    find_model
    find_model.destroy
    redirect_to admin_models_path
    flash[:notice] = "Model terminated"
  end

  private

  def find_model
    @model = Model.find(params[:id])
  end

  def model_params
    params.require(:model).permit!
  end


end