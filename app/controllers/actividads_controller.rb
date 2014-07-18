class ActividadsController < ApplicationController
  before_action :set_actividad, only: [:show, :edit, :update, :destroy]

  # GET /actividads
  # GET /actividads.json
  def index
    
  end

  # GET /actividads/1
  # GET /actividads/1.json
  def show
  end

  # GET /actividads/new
  def new
    @actividad = Actividad.new
  end

  # GET /actividads/1/edit
  def edit
  
    @activ = @actividad.actividad
    @tipo = @actividad.tipo

    
  end

  # POST /actividads
  # POST /actividads.json
  def create
    @actividad = Actividad.new(actividad_params)
    @actividad.empresa_id = @current_empresa.id

     #Verificamos si la tarea ha podido ser guardado correctamente.
   
   if @actividad.save()
      redirect_to actividads_path, :notice => "La actividad ha sido creada";
   else
      render "new";
   end
  end

  # PATCH/PUT /actividads/1
  # PATCH/PUT /actividads/1.json
  def update

    if @actividad.update(actividad_params)
      redirect_to actividads_path
    else
      render "edit"
    end
  end

  # DELETE /actividads/1
  # DELETE /actividads/1.json
  def destroy
      @actividad = Actividad.find(params[:id])
      if @actividad.destroy()
        redirect_to actividads_path, :notice => "El registro ha sido eliminado";
      else
        redirect_to actividads_path, :notice => "El registro NO ha podido ser eliminado";
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad
      @actividad = Actividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividad_params
      params.require(:actividad).permit(:empresa_id, :actividad, :tipo, :sementera, :producto_id)
    end
end
