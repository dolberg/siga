class CamposController < ApplicationController
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
    @campo = Campo.find(params[:id]);
    @lotes = Lote.where(:campo_id => params[:id]).order("lotes.lote DESC");
  end

  def edit
    @campo = Campo.find(params[:id])
    @nombre = @campo.nombre
    @superficie = @campo.superficie
    @provincia = @campo.provincia
    @partido = @campo.partido
    @localidad = @campo.localidad
  end

  def update
    @nombre = params[:campo]["nombre"]
    @superficie = params[:campo]["superficie"]
    @provincia = params[:campo]["provincia"]
    @partido = params[:campo]["partido"]
    @localidad = params[:campo]["localidad"]

    @campo = Campo.find(params[:id])

    @campo.nombre = @nombre 
    @campo.superficie = @superficie
    @campo.provincia = @provincia
    @campo.partido = @partido
    @campo.localidad = @localidad
    if @campo.save()
      redirect_to campos_path
    else
      render "edit"
    end
  end

  def destroy
       @campo = Campo.find(params[:id]);
   if @campo.destroy()
      redirect_to campos_path, :notice => "El registro ha sido eliminad";
   else
      redirect_to campos_path, :notice => "El registro NO ha podido ser eliminado";
   end
  end

  private

    def campo_params
      params.require(:campo).permit(:usuario_id, :nombre, :superficie, :provincia, :partido, :localidad)
    end

end
