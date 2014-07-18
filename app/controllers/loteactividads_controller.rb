class LoteactividadsController < ApplicationController
  before_action :set_loteactividad, only: [:show, :edit, :update, :destroy]

  # GET /loteactividads
  # GET /loteactividads.json
  def index
    
  end

  # GET /loteactividads/1
  # GET /loteactividads/1.json
  def show
  end

  # GET /loteactividads/new
  def new
    @loteactividad = Loteactividad.new
  end

  # GET /loteactividads/1/edit
  def edit
  end

  # POST /loteactividads
  # POST /loteactividads.json
  def create
    @loteactividad = Loteactividad.new(loteactividad_params)
    @loteactividad.empresa_id = @current_empresa.id
    
    if @loteactividad.save
      redirect_to loteactividads_path
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @loteactividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loteactividads/1
  # PATCH/PUT /loteactividads/1.json
  def update
  
    if @loteactividad.update(loteactividad_params)
      redirect_to loteactividads_path
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @loteactividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loteactividads/1
  # DELETE /loteactividads/1.json
  def destroy
    @loteactividad.destroy
    respond_to do |format|
      format.html { redirect_to loteactividads_url, notice: 'Loteactividad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loteactividad
      @loteactividad = Loteactividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loteactividad_params
      params.require(:loteactividad).permit(:empresa_id, :campo_id, :lote_id, :actividad_id, :superficie, :produccion, :precioproduccion)
    end
end
