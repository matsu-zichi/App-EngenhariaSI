
class LembretesController < ApplicationController
  before_action :get_ambiente
  before_action :set_lembrete, only: %i[ show edit update destroy ]

  # GET /lembretes or /lembretes.json
  def index
    @lembretes = @ambiente.lembretes
  end

  # GET /lembretes/1 or /lembretes/1.json
  def show
  end

  # GET /lembretes/new
  def new
    @lembrete = @ambiente.lembretes.build
  end

  # GET /lembretes/1/edit
  def edit
  end

  # POST /lembretes or /lembretes.json
  def create
    @lembrete = @ambiente.lembretes.build(lembrete_params)

    respond_to do |format|
      if @lembrete.save
        format.html { redirect_to user_ambiente_lembretes_path(current_user, @ambiente), notice: "Lembrete was successfully created." }
        format.json { render :show, status: :created, location: @lembrete }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lembrete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lembretes/1 or /lembretes/1.json
  def update
    respond_to do |format|
      if @lembrete.update(lembrete_params)
        format.html { redirect_to user_ambiente_lembrete_path(current_user, @ambiente), notice: "Lembrete was successfully updated." }
        format.json { render :show, status: :ok, location: @lembrete }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lembrete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lembretes/1 or /lembretes/1.json
  def destroy
    @lembrete.destroy

    respond_to do |format|
      format.html { redirect_to user_ambiente_lembretes_path(current_user, @ambiente), notice: "Lembrete was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lembrete
      @lembrete = @ambiente.lembretes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lembrete_params
      params.require(:lembrete).permit(:titulo, :texto, :expire_at, :email, :ambiente_id, :user_id)
    end

  private
    def get_ambiente
      @ambiente = Ambiente.find(params['ambiente_id'])
    end
    
end
