class LoteactividadsController < ApplicationController
  before_action :set_loteactividad, only: [:show, :edit, :update, :destroy]

  # GET /loteactividads
  # GET /loteactividads.json
  def index
    @loteactividads = Loteactividad.all.where(:usuario_id => @current_user.id)
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
    @loteactividad.usuario_id = @current_user.id

    respond_to do |format|
      if @loteactividad.save
        format.html { redirect_to @loteactividad, notice: 'Loteactividad was successfully created.' }
        format.json { render :show, status: :created, location: @loteactividad }
      else
        format.html { render :new }
        format.json { render json: @loteactividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loteactividads/1
  # PATCH/PUT /loteactividads/1.json
  def update
    respond_to do |format|
      if @loteactividad.update(loteactividad_params)
        format.html { redirect_to @loteactividad, notice: 'Loteactividad was successfully updated.' }
        format.json { render :show, status: :ok, location: @loteactividad }
      else
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
      params.require(:loteactividad).permit(:usuario_id, :campo_id, :lote_id, :actividad_id)
    end
end
