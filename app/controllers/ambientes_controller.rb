class AmbientesController < ApplicationController
  before_action :get_user
  before_action :set_ambiente, only: %i[ show edit update destroy ]

  # GET /ambientes or /ambientes.json
  def index
    @ambientes = @user.ambientes.order(params[:sort])
  end

  # GET /ambientes/1 or /ambientes/1.json
  def show
  end

  # GET /ambientes/new
  def new
    @ambiente = @user.ambientes.build
  end

  # GET /ambientes/1/edit
  def edit
  end

  # POST /ambientes or /ambientes.json
  def create
    @ambiente = @user.ambientes.build(ambiente_params)

    respond_to do |format|
      if @ambiente.save
        format.html { redirect_to user_ambientes_path(@user), notice: "Ambiente criado com sucesso." }
        format.json { render :show, status: :created, location: @ambiente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ambiente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambientes/1 or /ambientes/1.json
  def update
    respond_to do |format|
      if @ambiente.update(ambiente_params)
        format.html { redirect_to user_ambiente_path(@user), notice: "Ambiente atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @ambiente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ambiente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambientes/1 or /ambientes/1.json
  def destroy
    @ambiente.destroy

    respond_to do |format|
      format.html { redirect_to user_ambientes_path(@user), notice: "Ambiente deletado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambiente
      @ambiente = current_user.ambientes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ambiente_params
      params.require(:ambiente).permit(:nome, :descricao, :user_id)
    end

  private
    def get_user
      @user = current_user
    end 
end
