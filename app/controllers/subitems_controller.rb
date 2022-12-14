class SubitemsController < ApplicationController
    before_action :get_ambiente
    before_action :get_lembrete
    before_action :set_subitem, only: %i[ show edit update destroy ]

    def index
        @subitems = Subitem.order(:id)
    end

    def new
        @subitem = Subitem.new
    end

    def show
    end

    def edit

    end

    def create
        @subitem = @lembrete.subitems.build(subitem_params)

        respond_to do |format|
            if @subitem.save
              format.html { redirect_to user_ambiente_lembrete_subitems_path(current_user, @ambiente, @lembrete), notice: "Subitem was successfully created." }
              format.json { render :show, status: :created, location: @subitem }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @subitem.errors, status: :unprocessable_entity }
            end
        end
    end  

    def update
        respond_to do |format|
            if @subitem.update(subitem_params)
              format.html { redirect_to user_ambiente_lembrete_subitems_path(current_user, @ambiente, @lembrete), notice: "Subitem was successfully updated." }
              format.json { render :show, status: :ok, location: @subitem }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @subitem.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @subitem.destroy
        
        respond_to do |format|
        format.html { redirect_to user_ambiente_lembrete_subitems_path(current_user, @ambiente, @lembrete), notice: "Subitem was successfully destroyed." }
        format.json { head :no_content }
        end
    end
    
    def show
        
    end

    private
    def subitem_params
        params.require(:subitem).permit(:titulo, :texto, :lembrete_id)
    end

    private
    def get_ambiente
        @ambiente = Ambiente.find(params['ambiente_id'])
    end

    private
    def get_lembrete
        @lembrete = Lembrete.find(params['lembrete_id'])
    end

    private
    def set_subitem
        @subitem = Subitem.find(params[:id])
    end
end
