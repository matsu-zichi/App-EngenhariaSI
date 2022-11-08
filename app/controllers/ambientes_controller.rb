class AmbientesController < ApplicationController
  before_action :set_ambiente, only: %i[ show edit update destroy ]
  # GET
  def new
    @ambiente = Ambiente.new
  end
  
  def show
    @ambiente = Ambiente.find(params[:id])
  end

  def edit

  end

  # POST
  def create
    @ambiente = Ambiente.new(ambiente_params)

    respond_to do |format|
      if @ambiente.save
        format.html { redirect_to ambiente_url(@ambiente), notice: "Ambiente criado com sucesso." }
        format.json { render :show, status: :created, location: @ambiente }
      else
        # render :new, status: :unprocessable_entity, content_type: "text/html"
        # headers["Content-Type"] = "text/html"
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ambiente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ambiente = Ambiente.find(params[:id])
    if @ambiente.present?
      @ambiente.destroy
      respond_to do |format|
        format.html { redirect_to ambientes_url, notice: "Ambiente deletado com sucesso." }
        format.json { head :no_content }
      end
    end
  end

  def update
    respond_to do |format|
      if @ambiente.update(ambiente_params)
        format.html { redirect_to ambiente_url(@ambiente), notice: "Ambiente atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @ambiente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ambiente.errors, status: :unprocessable_entity }
      end
    end
  end



  def index
    # @ambientes = Ambiente.order(:id)
    @ambientes = Ambiente.order(params[:sort])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambiente
      @ambiente = Ambiente.find(params[:id])
    end
    def ambiente_params
      params.require(:ambiente).permit(:nome, :descricao)
    end
end