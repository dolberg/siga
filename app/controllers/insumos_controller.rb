class InsumosController < ApplicationController
  before_action :set_insumo, only: [:show, :edit, :update, :destroy]

  # GET /insumos
  # GET /insumos.json
  def index
    @insumos = Insumo.all.where(:usuario_id => @current_user.id)
    
  end

  # GET /insumos/1
  # GET /insumos/1.json
  def show
  end

  # GET /insumos/new
  def new
    @insumo = Insumo.new()
  end

  # GET /insumos/1/edit
  def edit
   @producto = @insumo.producto;
   @salin = @insumo.salin;
   @precin = @insumo.precin;
   @precfin = @insumo.precfin;
  end

  # POST /insumos
  # POST /insumos.json
  def create
   #Recuperamos las varibles POST que vinieron desde la acción new.
  
   @insumo = Insumo.new(insumo_params)
   @insumo.usuario_id = @current_user.id
  
   #Verificamos si la tarea ha podido ser guardado correctamente.
   
   if @insumo.save()
      redirect_to insumos_path, :notice => "El registro ha sido creado";
   else
      render "new";
   end
 end

  # PATCH/PUT /insumos/1
  # PATCH/PUT /insumos/1.json
  def update
   @insumo.producto = params[:insumo]["producto"];
   @insumo.salin = params[:insumo]["salin"];
   @insumo.precin = params[:insumo]["precin"];
   @insumo.precfin = params[:insumo]["precfin"];
   if @insumo.save()
      redirect_to insumos_path, :notice => "El registro ha sido modificado";
   else
      render "edit";
   end
  end

  # DELETE /insumos/1
  # DELETE /insumos/1.json
  def destroy
    @insumo.destroy
    respond_to do |format|
      format.html { redirect_to insumos_url, notice: 'Insumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumo
      @insumo = Insumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumo_params
      params.require(:insumo).permit(:usuario_id, :producto, :salin, :precin, :precfin)
    end
end
