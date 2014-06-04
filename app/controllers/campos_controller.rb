class CamposController < ApplicationController

  before_action :set_campo, only: [:show, :edit, :update, :destroy] 
  def index
    @campos = Campo.all.where(:usuario_id => @current_user.id)
  end

  def new
    @campo = Campo.new()
  end

  def create
    @campo = Campo.new(campo_params)
    @campo.usuario_id = @current_user.id
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
    @nombre = @campo.nombre
    @superficie = @campo.superficie
    @provincia = @campo.provincia
    @partido = @campo.partido
    @localidad = @campo.localidad
  end

  def update

    @campo.nombre = params[:campo]["nombre"]
    @campo.superficie = params[:campo]["superficie"]
    @campo.provincia = params[:campo]["provincia"]
    @campo.partido = params[:campo]["partido"]
    @campo.localidad = params[:campo]["localidad"]
    if @campo.save()
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
      params.require(:campo).permit(:usuario_id, :nombre, :superficie, :provincia, :partido, :localidad)
    end

end
