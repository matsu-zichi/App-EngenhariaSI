class AmbientesController < ApplicationController

  # GET
  def new
    @ambiente = Ambiente.new
  end

  # POST
  def create
    @ambiente = Ambiente.new(ambiente_params)

    respond_to do |format|
      if @ambiente.save
        format.html { redirect_to ambiente_url(@ambiente), notice: "Ambiente was successfully created." }
        format.json { render :show, status: :created, location: @ambiente }
      else
        # render :new, status: :unprocessable_entity, content_type: "text/html"
        # headers["Content-Type"] = "text/html"
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ambiente.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def show
    @ambiente = Ambiente.find(params[:id])
  end

  def index
    @ambientes = Ambiente.all
  end

  private
  def ambiente_params
    params.require(:ambiente).permit(:nome, :descricao)
  end

end
