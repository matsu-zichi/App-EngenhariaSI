class SubitemController < ApplicationController
    before_action :get_ambiente
    before_action :get_lembrete
    before_action :set_subitem, only: %i[ show edit update destroy ]

    def index
        @subitens = Subitem.order(:id)
    end

    def new
        @subitem = Subitem.new
    end

    def edit

    end

    def create
        respond_to do |format|
            if @subitem.save
              format.html { redirect_to ambiente_lembrete_subitem_index_path(@ambiente, @lembrete), notice: "Subitem was successfully created." }
              format.json { render :show, status: :created, location: @subitem }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @lembrete.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @subitem.update(subitem_params)
              format.html { redirect_to ambiente_lembrete_subitem_index_path(@ambiente, @lembrete), notice: "Subitem was successfully updated." }
              format.json { render :show, status: :ok, location: @subitem }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @subitem.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @subitem.destroy        
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
        @subitem = Subitem.find(params['id'])
    end
end
