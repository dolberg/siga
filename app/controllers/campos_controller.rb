class CamposController < ApplicationController

  before_action :set_campo, only: [:show, :edit, :update, :destroy] 
  def index
    
    
  end

  def new
    @campo = Campo.new()
  end

  def create
    @campo = Campo.new(campo_params)
    @campo.empresa_id = @current_empresa.id
      if @campo.save()
        redirect_to campos_path, :notice => "El registro ha sido creado";
      else
        render "new";
    end
  end

  def show
    @lotes = Lote.where(:campo_id => params[:id]).order("lotes.lote ASC");
  end

  def edit
    
  end

  def update

    if @campo.update(campo_params)
      redirect_to campos_path
    else
      render "edit"
    end
  end

  def destroy

      if @campo.destroy()
        redirect_to campos_path, :notice => "El registro ha sido eliminad";
      else
        redirect_to campos_path, :notice => "El registro NO ha podido ser eliminado";
    end
  end

#Para el select dinamico en labors
  def lotes

    @lotes = Lote.where(:campo_id => params[:campo_id])
    respond_to do |format|
        format.js {}
      end
      
    end

  private

    def set_campo
      @campo = Campo.find(params[:id])
    end

    def campo_params
      params.require(:campo).permit(:empresa_id, :nombre, :superficie, :provincia, :partido, :localidad)
    end

end
